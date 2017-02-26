/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.act.service;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.zjy.losonkei.common.service.BaseService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.act.utils.ProcessDefCache;
import com.zjy.losonkei.modules.act.utils.ActivitiUtils;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.*;
import org.activiti.engine.history.*;
import org.activiti.engine.impl.bpmn.diagram.ProcessDiagramGenerator;
import org.activiti.engine.impl.context.Context;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.PvmTransition;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.runtime.Job;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.IdentityLink;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.activiti.spring.ProcessEngineFactoryBean;
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
	private ManagementService managementService;

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
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(ActivitiUtils.PROCESS_KEY_PRODUCT, orderId, variables);
		return processInstance;
	}

	public Task getCurrentTaskByInstanceId(String processInstanceId){
		return taskService.createTaskQuery().processInstanceId(processInstanceId).singleResult();
	}

	public String getCurrentStateByInstanceId(String processInstanceId){
		List<Task> list = taskService.createTaskQuery().processInstanceId(processInstanceId).list();
		if (list == null || list.isEmpty()){
			return "";
		}else{
			StringBuffer sb = new StringBuffer();
			for (int i = 0 ;i < list.size();i++){
				sb.append(list.get(i).getName());
				if (i < list.size() - 1){
					sb.append(",");
				}
			}
			return sb.toString();
		}
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
			e.setTaskId(task.getId());
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
	 * 获取流转列表
	 * @return
	 */
	public List<Act> historyList(Act act){
		String userId = UserUtils.getUser().getId();

		List<Act> result = new ArrayList<Act>();

		HistoricTaskInstanceQuery taskInstanceQuery = historyService.createHistoricTaskInstanceQuery().taskCandidateUser(userId).orderByHistoricTaskInstanceEndTime().desc();
		
		// 设置查询条件
		if (StringUtils.isNotBlank(act.getProcDefKey())){
			taskInstanceQuery.processDefinitionKey(act.getProcDefKey());
		}
		if (act.getBeginDate() != null){
			taskInstanceQuery.taskCreatedAfter(act.getBeginDate());
		}
		if (act.getEndDate() != null){
			taskInstanceQuery.taskCreatedBefore(act.getEndDate());
		}
		act.getPage().setCount(taskInstanceQuery.count());
		// 查询列表
		List<HistoricTaskInstance> historicTaskInstances = taskInstanceQuery.listPage(act.getPage().getFirstResult(), act.getPage().getPageSize());
		for (HistoricTaskInstance task: historicTaskInstances) {
			Act e = new Act();
			e.setTaskId(task.getId());
			e.setProcDef(ProcessDefCache.get(task.getProcessDefinitionId()));

			List<HistoricIdentityLink> identityLinks = historyService.getHistoricIdentityLinksForTask(task.getId());
			List<String> candidateUsers = Lists.newArrayList();
			for (HistoricIdentityLink identityLink:identityLinks){
				candidateUsers.add(identityLink.getUserId());
			}
			e.setCandidateUsers(candidateUsers);

			HistoricProcessInstance historicProcessInstance = historyService.createHistoricProcessInstanceQuery().processInstanceId(task.getProcessInstanceId()).singleResult();
			e.setStartUserId(historicProcessInstance.getStartUserId());
			e.setProcInsId(historicProcessInstance.getId());
			e.setBusinessId(historicProcessInstance.getBusinessKey());
			result.add(e);
		}
		return result;
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
			if (!"startEvent".equals(histIns.getActivityType()) && ! "subProcess".equals(histIns.getActivityType())
					&& !"parallelGateway".equals(histIns.getActivityType()) &&
					 ! "endEvent".equals(histIns.getActivityType())){
				Act e = new Act();
				e.setHistIns(histIns);
				// 获取流程发起人名称
				e.setStartUserId(getStartUserIdByProcessInstanceId(procInsId));
				// 获取任务参与者名称
				if (StringUtils.isNotBlank(histIns.getTaskId())){
					List<HistoricIdentityLink> historicIdentityLinks = historyService.getHistoricIdentityLinksForTask(histIns.getTaskId());
					List<String> candidateUsers = Lists.newArrayList();
					if (!historicIdentityLinks.isEmpty()){
						for (HistoricIdentityLink identityLink:historicIdentityLinks){
							candidateUsers.add(identityLink.getUserId());
						}
					}else{
						HistoricTaskInstance historicTaskInstance = historyService.createHistoricTaskInstanceQuery().taskId(histIns.getTaskId()).singleResult();
						if (historicTaskInstance != null){
							String assignee = historicTaskInstance.getAssignee();
							if (StringUtils.isNotBlank(assignee)){
								candidateUsers.add(assignee);
							}
						}
					}
					e.setCandidateUsers(candidateUsers);
				}

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
		if (vars.isEmpty()){
			taskService.complete(taskId);
		}else {
			taskService.complete(taskId, vars);
		}
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




	@Transactional(readOnly = false)
	public ProcessInstance startShoppingProcess(String memberId,String ordersId){
		Map<String, Object> variables = new HashMap<String, Object>();
		variables.put(ActivitiUtils.VAR_MEMBER, memberId);
		variables.put(ActivitiUtils.VAR_TIMEOUT_PAY,ActivitiUtils.TIME_TIMEOUT_PAY);
		identityService.setAuthenticatedUserId(memberId);
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(ActivitiUtils.PROCESS_KEY_SHOPPING, ordersId, variables);
		return processInstance;
	}

	public Job getTheEndTime(String executionId){
		return managementService.createJobQuery().executionId(executionId).singleResult();
	}
}

