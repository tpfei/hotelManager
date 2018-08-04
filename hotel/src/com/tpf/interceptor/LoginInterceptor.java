package com.tpf.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor{  
	   
	private static final long serialVersionUID = 1L;
	//执行拦截的方法  
    protected String doIntercept(ActionInvocation actionInvocation) throws Exception {  
        // 判断session中是否保存了后台用户的信息  
	    HttpServletRequest request = ServletActionContext.getRequest();
	    HttpSession session = request.getSession();
	    System.out.println(session.getAttribute("username"));
        if(session.getAttribute("username") != null) {
        	//已经登录 s
        	return actionInvocation.invoke();         	
        }else {  
            return "login"; 
        }  
    }      
}  
