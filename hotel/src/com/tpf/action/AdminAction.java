package com.tpf.action;  
  
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.tpf.entity.Admin;
import com.tpf.service.IAdminService;
import com.tpf.service.IKfxxService;  
  
public class AdminAction extends ActionSupport {  
      
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//定义出来我们的对象名  id  以及泛型集合  
    private IAdminService ids; 
    private IKfxxService Kfids; 
	private List<Admin> list;
    private Admin admin;  
    private int id;  
    
    //查询  
	public String login() throws Exception {
    	admin =  ids.login();
    	if(admin != null){
    		HttpServletRequest request = ServletActionContext.getRequest();
    		HttpSession session = request.getSession();
    		session.setAttribute("admin_name", admin.getAdmin_name());
    		return "loginSuccess";
    	}
		return "login";
    }
    
    public String show(){  
    	
        list=ids.findAll();
        //如果表中的u_id等于当前用户的id,把该数据存到集合中返回，则显示该用户的信息，
        return "show";  
    }  
    
    public String showtop(){  
        return "top";  
    } 
    
    public String showleft(){  
    	
        return "left";  
    } 
      
      
    //预修改  
    public String prepup(){
    	
    	admin=ids.findById(id);  
        return "prepup";  
    }  
      
    //增加  
    public String save(){  
        ids.save(admin);  
        return "find";  
    }  
  
    //修改  
    public String update(){  
        ids.update(admin);  
        return "find";  
    }  
            
    public IAdminService getIds() {  
        return ids;  
    }  
  
    public void setIds(IAdminService ids) {  
        this.ids = ids;  
    }  
  
    public List<Admin> getList() {  
        return list;  
    }  
  
    public void setList(List<Admin> list) {  
        this.list = list;  
    }  
  
    public Admin getAdmin() {  
        return admin;  
    }  
  
    public void setAdmin(Admin admin) {  
        this.admin = admin;  
    }  
  
    public int getId() {  
        return id;  
    }  
      
    public void setId(int id) {  
        this.id = id;  
    }  
    public IKfxxService getKfids() {
		return Kfids;
	}

	public void setKfids(IKfxxService kfids) {
		Kfids = kfids;
	}
}  