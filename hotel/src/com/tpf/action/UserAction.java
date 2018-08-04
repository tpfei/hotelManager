package com.tpf.action;  
  
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tpf.entity.User;
import com.tpf.service.IUserService;  
  
public class UserAction extends ActionSupport {  
      

	private static final long serialVersionUID = 1L;
	//定义出来我们的对象名  id  以及泛型集合  
    private IUserService ids;  
    private List<User> list;  
    private User user;  
    private int id;  
      
    
	public String login() throws Exception {
		user =  ids.login();
    	if(user != null){
    		HttpServletRequest request = ServletActionContext.getRequest();
    		HttpSession session = request.getSession();
    		session.setAttribute("username", user.getUsername());
    		session.setAttribute("userid", user.getUserid());
    		return "loginSuccess";
    	}
		return "login";
    }
	
	
    //查询  
    public String show(){  
        list=ids.findAll();
        //ActionContext.getContext().getSession().put("list", list);
        return "zhanshi";  
    }  
      
    //删除  
    public String delete(){  
        ids.delete(id);  
        return "find";           
    }  
      
    //预修改  
    public String prepup(){  
        user=ids.findById(id);  
        return "prepup";  
    }  
      
    //注册
    public String register(){  
        ids.save(user);  
        return "userRegister";  
    }  
  
    //修改  
    public String update(){  
        ids.update(user);  
        return "find";  
    }  
      
      
    public IUserService getIds() {  
        return ids;  
    }  
  
    public void setIds(IUserService ids) {  
        this.ids = ids;  
    }  
  
    public List<User> getList() {  
        return list;  
    }  
  
    public void setList(List<User> list) {  
        this.list = list;  
    }  
  
    public User getUser() {  
        return user;  
    }  
  
    public void setUser(User user) {  
        this.user = user;  
    }  
  
    public int getId() {  
        return id;  
    }  
      
    public void setId(int id) {  
        this.id = id;  
    }        
}  