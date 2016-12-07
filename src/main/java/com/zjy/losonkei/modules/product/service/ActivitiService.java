/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.service;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.BaseService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.act.utils.ActUtils;
import com.zjy.losonkei.modules.act.utils.ProcessDefCache;
import com.zjy.losonkei.modules.product.utils.ActivitiUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.*;
import org.activiti.engine.delegate.Expression;
import org.activiti.engine.history.*;
import org.activiti.engine.impl.RepositoryServiceImpl;
import org.activiti.engine.impl.bpmn.behavior.UserTaskActivityBehavior;
import org.activiti.engine.impl.bpmn.diagram.ProcessDiagramGenerator;
import org.activiti.engine.impl.context.Context;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.PvmTransition;
import org.activiti.engine.impl.pvm.delegate.ActivityBehavior;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.impl.task.TaskDefinition;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.activiti.engine.runtime.Execution;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.IdentityLink;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.activiti.spring.ProcessEngineFactoryBean;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.InputStream;
import java.util.*;

/**
 * zjy
 * 2016-11-8
 */
@Service
@Transactional(readOnly = true)
public class ActivitiService extends BaseService {

	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private HistoryService historyService;
	@Autowired
	private RepositoryService repositoryService;
	@Autowired
	private ProcessEngineFactoryBean processEngine;

	@Autowired
	private IdentityService identityService;

	/**
	 * 开始研发新产品流程
	 * @param startUserId 创建者id
	 * @param orderId   该为生产订单id
	 * @param producers 生产者
	 * @param auditors	  审核者
     */
	@Transactional(readOnly = false)
	public ProcessInstance startProductProcess(String startUserId, String orderId, List<String> producers, List<String> auditors){
		Map<String, Object> variables = new HashMap<String, Object>();
		variables.put(ActivitiUtils.VAR_STARTER, startUserId);
		variables.put(ActivitiUtils.VAR_PRODUCERS, producers);
		variables.put(ActivitiUtils.VAR_AUDITORS,auditors);
		identityService.setAuthenticatedUserId(startUserId);
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(ActivitiUtils.PROCESS_KEY_INVENT, orderId, variables);
		return processInstance;
	}

	public Task getCurrentTaskByInstanceId(String processInstanceId){
		return taskService.createTaskQuery().processInstanceId(processInstanceId).singleResult();
	}

	public ProcessInstance getProcessInstanceById(String processInstanceId) {
		return runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
	}

	public void updateVariablesByProcessInstanceId(String processInstanceId,String varName,Object object){
		String executionId = runtimeService.createExecutionQuery().processInstanceId(processInstanceId).singleResult().getId();
		runtimeService.setVariable(executionId,varName,object);
	}
	public void updateVariablesByProcessInstanceId(String processInstanceId,Map<String,Object> vars){
		String executionId = runtimeService.createExecutionQuery().processInstanceId(processInstanceId).singleResult().getId();
		runtimeService.setVariables(executionId,vars);
	}

	public HistoricVariableInstance getVariablesByProcessInstanceId(String processInstanceId,String varName) {
		return historyService.createHistoricVariableInstanceQuery().processInstanceId(processInstanceId).variableName(varName).singleResult();
	}

	public String getStartUserIdByProcessInstanceId(String processInstanceId) {
		return historyService.createHistoricProcessInstanceQuery().processInstanceId(processInstanceId).singleResult().getStartUserId();
	}


	/**
	 * 获取待办列表
	 * @param procDefKey 流程定义标识
	 * @return
	 */
	public List<Act> todoList(Act act){
		String userId = UserUtils.getUser().getId();
		
		List<Act> result = new ArrayList<Act>();
		
		// =============== 已经签收的任务  ===============
		TaskQuery todoTaskQuery = taskService.createTaskQuery().taskCandidateUser(userId)
				.includeProcessVariables().orderByTaskCreateTime().desc();

		// 设置查询条件
		if (StringUtils.isNotBlank(act.getProcDefKey())){
			todoTaskQuery.processDefinitionKey(act.getProcDefKey());
		}
		if (act.getBeginDate() != null){
			todoTaskQuery.taskCreatedAfter(act.getBeginDate());
		}
		if (act.getEndDate() != null){
			todoTaskQuery.taskCreatedBefore(act.getEndDate());
		}

		// 查询列表
		List<Task> todoList = todoTaskQuery.list();
		for (Task task : todoList) {
			Act e = new Act();
			e.setTask(task);
			e.setVars(task.getProcessVariables());
			e.setProcDef(ProcessDefCache.get(task.getProcessDefinitionId()));

			List<IdentityLink> identityLinks = taskService.getIdentityLinksForTask(task.getId());
			List<String> candidateUsers = Lists.newArrayList();
			for (IdentityLink identityLink:identityLinks){
				candidateUsers.add(identityLink.getUserId());
			}
			e.setCandidateUsers(candidateUsers);

			e.setStartUserId(getStartUserIdByProcessInstanceId(task.getProcessInstanceId()));
			e.setProcIns(getProcessInstanceById(task.getProcessInstanceId()));
			result.add(e);
		}

		return result;
	}
	
	/**
	 * 获取已办任务
	 * @param page
	 * @param procDefKey 流程定义标识
	 * @return
	 */
	public Page<Act> historicList(Page<Act> page, Act act){
		String userId = UserUtils.getUser().getLoginName();//ObjectUtils.toString(UserUtils.getUser().getId());

		HistoricTaskInstanceQuery histTaskQuery = historyService.createHistoricTaskInstanceQuery().taskAssignee(userId).finished()
				.includeProcessVariables().orderByHistoricTaskInstanceEndTime().desc();
		
		// 设置查询条件
		if (StringUtils.isNotBlank(act.getProcDefKey())){
			histTaskQuery.processDefinitionKey(act.getProcDefKey());
		}
		if (act.getBeginDate() != null){
			histTaskQuery.taskCompletedAfter(act.getBeginDate());
		}
		if (act.getEndDate() != null){
			histTaskQuery.taskCompletedBefore(act.getEndDate());
		}
		
		// 查询总数
		page.setCount(histTaskQuery.count());
		
		// 查询列表
		List<HistoricTaskInstance> histList = histTaskQuery.listPage(page.getFirstResult(), page.getMaxResults());
		//处理分页问题
		List<Act> actList=Lists.newArrayList();
		for (HistoricTaskInstance histTask : histList) {
			Act e = new Act();
			e.setHistTask(histTask);
			e.setVars(histTask.getProcessVariables());
//			e.setTaskVars(histTask.getTaskLocalVariables());
//			System.out.println(histTask.getId()+"  =  "+histTask.getProcessVariables() + "  ========== " + histTask.getTaskLocalVariables());
			e.setProcDef(ProcessDefCache.get(histTask.getProcessDefinitionId()));
//			e.setProcIns(runtimeService.createProcessInstanceQuery().processInstanceId(task.getProcessInstanceId()).singleResult());
//			e.setProcExecUrl(ActUtils.getProcExeUrl(task.getProcessDefinitionId()));
			e.setStatus("finish");
			actList.add(e);
			//page.getList().add(e);
		}
		page.setList(actList);
		return page;
	}


	public String getOutGoingTransNamesSingleResult(String taskId) {
		List<String> outGoingTransNames = getOutGoingTransNames(taskId);
		return outGoingTransNames.isEmpty() ? "" : outGoingTransNames.get(0);
	}

	public List<String> getOutGoingTransNames(String taskId) {
		List<String> transNames = new ArrayList<String>();
		// 1.获取流程定义
		Task task = getTask(taskId);
		ProcessDefinitionEntity pd = (ProcessDefinitionEntity) repositoryService.getProcessDefinition(task.getProcessDefinitionId());
		// 2.获取流程实例
		ProcessInstance pi = runtimeService.createProcessInstanceQuery().processInstanceId(task.getProcessInstanceId()).singleResult();
		// 3.通过流程实例查找当前活动的ID
		String activitiId = pi.getActivityId();
		// 4.通过活动的ID在流程定义中找到对应的活动对象
		ActivityImpl activity = pd.findActivity(activitiId);
		// 5.通过活动对象找当前活动的所有出口
		List<PvmTransition> transitions =  activity.getOutgoingTransitions();
		// 6.提取所有出口的名称，封装成集合
		for (PvmTransition trans : transitions) {
			String transName = trans.getId();
			if(StringUtils.isNotBlank(transName)){
				transNames.add(transName);
			}
		}
		return transNames;
	}

	
	/**
	 * 获取流转历史列表
	 * @param procInsId 流程实例
	 */
	public List<Act> histoicFlowList(String procInsId){
		List<Act> actList = Lists.newArrayList();
		List<HistoricActivityInstance> list = historyService.createHistoricActivityInstanceQuery().processInstanceId(procInsId)
				.orderByHistoricActivityInstanceStartTime().asc().orderByHistoricActivityInstanceEndTime().asc().list();

		for (int i=0; i<list.size(); i++){
			
			HistoricActivityInstance histIns = list.get(i);

			// 不显示开始节点和结束节点
			if (!"startEvent".equals(histIns.getActivityType()) &&
					 ! "endEvent".equals(histIns.getActivityType())){
				Act e = new Act();
				e.setHistIns(histIns);
				// 获取流程发起人名称
				e.setStartUserId(getStartUserIdByProcessInstanceId(procInsId));
				// 获取任务参与者名称
				List<HistoricIdentityLink> historicIdentityLinks = historyService.getHistoricIdentityLinksForTask(histIns.getTaskId());
				List<String> candidateUsers = Lists.newArrayList();
				for (HistoricIdentityLink identityLink:historicIdentityLinks){
					candidateUsers.add(identityLink.getUserId());
				}
				e.setCandidateUsers(candidateUsers);
				// 获取意见评论内容
				if (StringUtils.isNotBlank(histIns.getTaskId())){
					List<Comment> commentList = taskService.getTaskComments(histIns.getTaskId());
					if (commentList.size() > 0){
						e.setComment(commentList.get(0).getFullMessage());
					}
				}
				actList.add(e);
			}
		}
		return actList;
	}

	/**
	 * 流程下一步是否让我操作，参数任意填一个就可以。
	 * @param processInstanceId
	 * @param taskId
	 * @return
	 */
	public boolean nextStepBelongsMe(String processInstanceId,String taskId){
		boolean flag = false;

		if (StringUtils.isNotBlank(processInstanceId)){
			Task task = getCurrentTaskByInstanceId(processInstanceId);
			if (task == null){
				return flag;
			}else{
				taskId = task.getId();
			}
		}
		List<IdentityLink> identityLinks = taskService.getIdentityLinksForTask(taskId);
		String meId = UserUtils.getUser().getId();
		for (IdentityLink identityLink:identityLinks){
			if (meId.equals(identityLink.getUserId())){
				flag = true;
				break;
			}
		}
		return flag;
	}

	/**
	 * 获取流程列表
	 * @param category 流程分类
	 */
	public Page<Object[]> processList(Page<Object[]> page, String category) {
		/*
		 * 保存两个对象，一个是ProcessDefinition（流程定义），一个是Deployment（流程部署）
		 */
	    ProcessDefinitionQuery processDefinitionQuery = repositoryService.createProcessDefinitionQuery()
	    		.latestVersion().active().orderByProcessDefinitionKey().asc();
	    
	    if (StringUtils.isNotEmpty(category)){
	    	processDefinitionQuery.processDefinitionCategory(category);
		}
	    
	    page.setCount(processDefinitionQuery.count());
	    
	    List<ProcessDefinition> processDefinitionList = processDefinitionQuery.listPage(page.getFirstResult(), page.getMaxResults());
	    for (ProcessDefinition processDefinition : processDefinitionList) {
	      String deploymentId = processDefinition.getDeploymentId();
	      Deployment deployment = repositoryService.createDeploymentQuery().deploymentId(deploymentId).singleResult();
	      page.getList().add(new Object[]{processDefinition, deployment});
	    }
		return page;
	}
	



	/**
	 * 获取任务
	 * @param taskId 任务ID
	 */
	public Task getTask(String taskId){
		return taskService.createTaskQuery().taskId(taskId).singleResult();
	}
	
	/**
	 * 删除任务
	 * @param taskId 任务ID
	 * @param deleteReason 删除原因
	 */
	@Transactional(readOnly = false)
	public void deleteTask(String taskId, String deleteReason){
		taskService.deleteTask(taskId, deleteReason);
	}
	
	/**
	 * 签收任务
	 * @param taskId 任务ID
	 * @param userId 签收用户ID（用户登录名）
	 */
	@Transactional(readOnly = false)
	public void claim(String taskId, String userId){
		taskService.claim(taskId, userId);
	}
	
	/**
	 * 提交任务, 并保存意见
	 * @param taskId 任务ID
	 * @param procInsId 流程实例ID，如果为空，则不保存任务提交意见
	 * @param comment 任务提交意见的内容
	 * @param vars 任务变量
	 */
	@Transactional(readOnly = false)
	public void complete(String taskId, String procInsId, String comment, Map<String, Object> vars){
		complete(taskId, procInsId, comment, "", vars);
	}
	
	/**
	 * 提交任务, 并保存意见
	 * @param taskId 任务ID
	 * @param procInsId 流程实例ID，如果为空，则不保存任务提交意见
	 * @param comment 任务提交意见的内容
	 * @param title			流程标题，显示在待办任务标题
	 * @param vars 任务变量
	 */
	@Transactional(readOnly = false)
	public void complete(String taskId, String procInsId, String comment, String title, Map<String, Object> vars){
		// 添加意见
		if (StringUtils.isNotBlank(procInsId) && StringUtils.isNotBlank(comment)){
			taskService.addComment(taskId, procInsId, comment);
		}
		
		// 设置流程变量
		if (vars == null){
			vars = Maps.newHashMap();
		}
		
		// 设置流程标题
		if (StringUtils.isNotBlank(title)){
			vars.put("title", title);
		}
		
		// 提交任务
		taskService.complete(taskId, vars);
	}

	/**
	 * 完成第一个任务
	 * @param procInsId
	 */
	@Transactional(readOnly = false)
	public void completeFirstTask(String procInsId){
		completeFirstTask(procInsId, null, null, null);
	}
	
	/**
	 * 完成第一个任务
	 * @param procInsId
	 * @param comment
	 * @param title
	 * @param vars
	 */
	@Transactional(readOnly = false)
	public void completeFirstTask(String procInsId, String comment, String title, Map<String, Object> vars){
		String userId = UserUtils.getUser().getLoginName();
		Task task = taskService.createTaskQuery().taskAssignee(userId).processInstanceId(procInsId).active().singleResult();
		if (task != null){
			complete(task.getId(), procInsId, comment, title, vars);
		}
	}

	/**
	 * 读取带跟踪的图片
	 * @param executionId	环节ID
	 * @return	封装了各种节点信息
	 */
	public InputStream tracePhoto(String processDefinitionId, String executionId) {
		BpmnModel bpmnModel = repositoryService.getBpmnModel(processDefinitionId);
		
		List<String> activeActivityIds = new ArrayList<String>();
		if (runtimeService.createExecutionQuery().executionId(executionId).count() > 0){
			activeActivityIds = runtimeService.getActiveActivityIds(executionId);
		}

		Context.setProcessEngineConfiguration(processEngine.getProcessEngineConfiguration());

		return ProcessDiagramGenerator.generateDiagram(bpmnModel, "png", activeActivityIds);
	}
	/**
	 * 流程跟踪图信息
	 * @param processInstanceId		流程实例ID
	 * @return	封装了各种节点信息
	 */
	public List<Map<String, Object>> traceProcess(String processInstanceId) throws Exception {
		Execution execution = runtimeService.createExecutionQuery().executionId(processInstanceId).singleResult();//执行实例
		Object property = PropertyUtils.getProperty(execution, "activityId");
		String activityId = "";
		if (property != null) {
			activityId = property.toString();
		}
		ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId)
				.singleResult();
		ProcessDefinitionEntity processDefinition = (ProcessDefinitionEntity) ((RepositoryServiceImpl) repositoryService)
				.getDeployedProcessDefinition(processInstance.getProcessDefinitionId());
		List<ActivityImpl> activitiList = processDefinition.getActivities();//获得当前任务的所有节点

		List<Map<String, Object>> activityInfos = new ArrayList<Map<String, Object>>();
		for (ActivityImpl activity : activitiList) {

			boolean currentActiviti = false;
			String id = activity.getId();

			// 当前节点
			if (id.equals(activityId)) {
				currentActiviti = true;
			}

			Map<String, Object> activityImageInfo = packageSingleActivitiInfo(activity, processInstance, currentActiviti);

			activityInfos.add(activityImageInfo);
		}

		return activityInfos;
	}

	/**
	 * 封装输出信息，包括：当前节点的X、Y坐标、变量信息、任务类型、任务描述
	 * @param activity
	 * @param processInstance
	 * @param currentActiviti
	 * @return
	 */
	private Map<String, Object> packageSingleActivitiInfo(ActivityImpl activity, ProcessInstance processInstance,
			boolean currentActiviti) throws Exception {
		Map<String, Object> vars = new HashMap<String, Object>();
		Map<String, Object> activityInfo = new HashMap<String, Object>();
		activityInfo.put("currentActiviti", currentActiviti);
		setPosition(activity, activityInfo);
		setWidthAndHeight(activity, activityInfo);

		Map<String, Object> properties = activity.getProperties();
		vars.put("节点名称", properties.get("name"));
		vars.put("任务类型", ActUtils.parseToZhType(properties.get("type").toString()));

		ActivityBehavior activityBehavior = activity.getActivityBehavior();
		logger.debug("activityBehavior={}", activityBehavior);
		if (activityBehavior instanceof UserTaskActivityBehavior) {

			Task currentTask = null;

			// 当前节点的task
			if (currentActiviti) {
				currentTask = getCurrentTaskInfo(processInstance);
			}

			// 当前任务的分配角色
			UserTaskActivityBehavior userTaskActivityBehavior = (UserTaskActivityBehavior) activityBehavior;
			TaskDefinition taskDefinition = userTaskActivityBehavior.getTaskDefinition();
			Set<Expression> candidateGroupIdExpressions = taskDefinition.getCandidateGroupIdExpressions();
			if (!candidateGroupIdExpressions.isEmpty()) {

				// 任务的处理角色
				setTaskGroup(vars, candidateGroupIdExpressions);

				// 当前处理人
				if (currentTask != null) {
					setCurrentTaskAssignee(vars, currentTask);
				}
			}
		}

		vars.put("节点说明", properties.get("documentation"));

		String description = activity.getProcessDefinition().getDescription();
		vars.put("描述", description);

		logger.debug("trace variables: {}", vars);
		activityInfo.put("vars", vars);
		return activityInfo;
	}

	/**
	 * 设置任务组
	 * @param vars
	 * @param candidateGroupIdExpressions
	 */
	private void setTaskGroup(Map<String, Object> vars, Set<Expression> candidateGroupIdExpressions) {
		String roles = "";
		for (Expression expression : candidateGroupIdExpressions) {
			String expressionText = expression.getExpressionText();
			//String roleName = identityService.createGroupQuery().groupId(expressionText).singleResult().getName();
			//roles += roleName;
		}
		vars.put("任务所属角色", roles);
	}

	/**
	 * 设置当前处理人信息
	 * @param vars
	 * @param currentTask
	 */
	private void setCurrentTaskAssignee(Map<String, Object> vars, Task currentTask) {
		String assignee = currentTask.getAssignee();
		if (assignee != null) {
			//org.activiti.engine.identity.User assigneeUser = identityService.createUserQuery().userId(assignee).singleResult();
			//String userInfo = assigneeUser.getFirstName() + " " + assigneeUser.getLastName();
			//vars.put("当前处理人", userInfo);
		}
	}

	/**
	 * 获取当前节点信息
	 * @param processInstance
	 * @return
	 */
	private Task getCurrentTaskInfo(ProcessInstance processInstance) {
		Task currentTask = null;
		try {
			String activitiId = (String) PropertyUtils.getProperty(processInstance, "activityId");
			logger.debug("current activity id: {}", activitiId);

			currentTask = taskService.createTaskQuery().processInstanceId(processInstance.getId()).taskDefinitionKey(activitiId)
					.singleResult();
			logger.debug("current task for processInstance: {}", ToStringBuilder.reflectionToString(currentTask));

		} catch (Exception e) {
			logger.error("can not get property activityId from processInstance: {}", processInstance);
		}
		return currentTask;
	}

	/**
	 * 设置宽度、高度属性
	 * @param activity
	 * @param activityInfo
	 */
	private void setWidthAndHeight(ActivityImpl activity, Map<String, Object> activityInfo) {
		activityInfo.put("width", activity.getWidth());
		activityInfo.put("height", activity.getHeight());
	}

	/**
	 * 设置坐标位置
	 * @param activity
	 * @param activityInfo
	 */
	private void setPosition(ActivityImpl activity, Map<String, Object> activityInfo) {
		activityInfo.put("x", activity.getX());
		activityInfo.put("y", activity.getY());
	}

	public TaskService getTaskService() {
		return taskService;
	}
	public RuntimeService getRuntimeService() {
		return runtimeService;
	}
	public HistoryService getHistoryService() {
		return historyService;
	}

	public RepositoryService getRepositoryService() {
		return repositoryService;
	}
}
