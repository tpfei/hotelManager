package com.tpf.service.impl;  
  
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tpf.dao.IAdminDao;
import com.tpf.dao.IDeptDao;
import com.tpf.dao.impl.AdminDaoImpl;
import com.tpf.entity.Admin;
import com.tpf.entity.Dept;
import com.tpf.service.IAdminService;

  
public class AdminServiceImpl extends HibernateDaoSupport implements IAdminService{  
    // 调用我们实现类的接口  定义成私有字段进行封装  
    private IAdminDao idd;  
    
    //登录
    public Admin login() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        System.out.println(userName + password);
        String ck=request.getParameter("ck");
        //通过Dao接口，访问数据库，用户名与密码为条件查询用户数据
        Admin admin = idd.check(userName, password);
        //验证登录是否成功
        if(admin!=null) { //成功
        	//Cookie c=new Cookie("users", uname+"-"+password);
        	//response.addCookie(c);
        	Cookie useNameCookie = new Cookie("userName", userName);  
          	useNameCookie.setMaxAge(20); 
			response.addCookie(useNameCookie);
			
	        Cookie passwordCookie = new Cookie("password",password);  
	        passwordCookie.setMaxAge(20);
	        response.addCookie(passwordCookie);
	        
	        System.out.println("userName= "+userName+" userPassword= "+password);
	        request.setAttribute("userName", userName);
	        return admin;
        } else { //失败
            //请求中添加错误信息
            //System.out.println("用户名或密码错误!");
            request.setAttribute("error", "用户名或密码错误!");
            return null;
        }
    }
    
    
    //查询  
    public List<Admin> findAll() {  
    	
        return this.idd.findAll();  
    }  
  
    //增加  
    public boolean save(Admin d) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.save(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //修改  
    public boolean update(Admin d) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.update(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //根据ID查询  
    public Admin findById(int id) {  
        // TODO Auto-generated method stub  
        return this.idd.findById(id);  
    }  
  
    //封装的GET  SET方法  
    public IAdminDao getIdd() {  
        return idd;  
    }  
  
    public void setIdd(IAdminDao idd) {  
        this.idd = idd;  
    }    
} 