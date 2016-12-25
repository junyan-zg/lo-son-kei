/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.common.web;

import com.ckfinder.connector.ConnectorServlet;
import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.utils.FileUtils;
import com.zjy.losonkei.modules.sys.security.Principal;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.shiro.subject.Subject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * CKFinderConnectorServlet
 * @author ThinkGem
 * @version 2014-06-25
 */
public class CKFinderConnectorServlet extends ConnectorServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		prepareGetResponse(request, response, false);
		super.doGet(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		prepareGetResponse(request, response, true);
		super.doPost(request, response);
	}
	
	private void prepareGetResponse(final HttpServletRequest request,
			final HttpServletResponse response, final boolean post) throws ServletException, UnsupportedEncodingException {
		Principal principal = UserUtils.getPrincipal();
		Subject subject = UserUtils.getSubject();
		if (principal == null ){
			return;
		}
		if(subject.hasRole("member")){
			return;
		}
		String command = request.getParameter("command");
		command = new String(command.getBytes("ISO-8859-1"), "utf-8");
		String type = request.getParameter("type");
		if(type != null) {
			type = new String(type.getBytes("ISO-8859-1"), "utf-8");
		}
		// 初始化时，如果startupPath文件夹不存在，则自动创建startupPath文件夹
		if ("Init".equals(command)){
			String startupPath = request.getParameter("startupPath");// 当前文件夹可指定为模块名
			startupPath = new String(startupPath.getBytes("ISO-8859-1"), "utf-8");
			if (startupPath!=null){
				String[] ss = startupPath.split(":");
				if (ss.length==2){
					String realPath = Global.getUserfilesBaseDir() + Global.USERFILES_BASE_URL
							/*+ principal + "/"*/ + ss[0] + ss[1];
					FileUtils.createDirectory(FileUtils.path(realPath));
				}
			}
		}
		// 快捷上传，自动创建当前文件夹，并上传到该路径
		else if ("QuickUpload".equals(command) && type!=null){
			String currentFolder = request.getParameter("currentFolder");// 当前文件夹可指定为模块名
			currentFolder = new String(currentFolder.getBytes("ISO-8859-1"), "utf-8");
			String realPath = Global.getUserfilesBaseDir() + Global.USERFILES_BASE_URL
					/*+ principal + "/"*/ + type + (currentFolder != null ? currentFolder : "");
			FileUtils.createDirectory(FileUtils.path(realPath));
		}
//		System.out.println("------------------------");
//		for (Object key : request.getParameterMap().keySet()){
//			System.out.println(key + ": " + new String(request.getParameter(key.toString()).getBytes("ISO-8859-1"),"utf-8"));
//		}

	}
	
}
