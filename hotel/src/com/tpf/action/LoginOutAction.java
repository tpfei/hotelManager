package com.tpf.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LoginOutAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

    public String execute() throws Exception {
		    HttpServletRequest request = ServletActionContext.getRequest();
		    HttpSession usersession = request.getSession();
		    if(usersession.getAttribute("username") != null) {
		    	usersession.removeAttribute("username");
		    	usersession.removeAttribute("userid");
		    	usersession.invalidate();
		    	return "suc";
		    }
		    return "eroor";		               	
    }
}
