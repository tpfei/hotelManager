package com.tpf.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class AdminInterceptor extends MethodFilterInterceptor{  
	   
	private static final long serialVersionUID = 1L;
	//执行拦截的方法  
    protected String doIntercept(ActionInvocation actionInvocation) throws Exception {  
        // 判断session中是否保存了后台用户的信息  
	    HttpServletRequest request = ServletActionContext.getRequest();
	    HttpSession session = request.getSession(); 
	    System.out.println(session.getAttribute("admin_name"));
        if(session.getAttribute("admin_name") != null) {
        	//已经登录
        	return actionInvocation.invoke();         	
        }else {
            //没有登录进行访问   
            return "login"; 
        }  
    }      
}  
