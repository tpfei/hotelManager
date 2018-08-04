package com.tpf.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class AdminOutAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
    public String execute() throws Exception {
		    HttpServletRequest request = ServletActionContext.getRequest();
		    HttpSession adminsession = request.getSession();
		    if(adminsession.getAttribute("admin_name") != null) {
		    	adminsession.invalidate();
		    	return "suc";
		    }
		    return "eroor";		               	
    }
}
