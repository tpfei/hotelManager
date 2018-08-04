package com.tpf.service.impl;  
  
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tpf.dao.IUserDao;
import com.tpf.entity.User;
import com.tpf.service.IUserService;  
  
public class UserServiceImpl extends HibernateDaoSupport implements IUserService{  
    // 调用我们实现类的接口  定义成私有字段进行封装  
    private IUserDao idd; 
    
    public User login() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        System.out.println(userName + password);
        String ck=request.getParameter("ck");
        //通过Dao接口，访问数据库，用户名与密码为条件查询用户数据
        User user = idd.check(userName, password);
        //验证登录是否成功
        if(user!=null) { //成功
        	Cookie useNameCookie = new Cookie("userName", userName);  
          	useNameCookie.setMaxAge(20); 
			response.addCookie(useNameCookie);
			
	        Cookie passwordCookie = new Cookie("password",password);  
	        passwordCookie.setMaxAge(20);
	        response.addCookie(passwordCookie);
	        
	        System.out.println("userName= "+userName+" userPassword= "+password);
	        request.setAttribute("userName", userName);
	        return user;
        } else { //失败
            request.setAttribute("error", "用户名或密码错误!");
            return null;
        }
    }
    
    //查询  
    public List<User> findAll() {  
        // TODO Auto-generated method stub  
        return this.idd.findAll();  
    }  
    //增加  
    public boolean save(User d) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.save(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //删除  
    public boolean delete(int id) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.delete(id);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //修改  
    public boolean update(User d) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.update(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //根据ID查询  
    public User findById(int id) {  
        // TODO Auto-generated method stub  
        return this.idd.findById(id);  
    }  
  
    //封装的GET  SET方法  
    public IUserDao getIdd() {  
        return idd;  
    }  
  
    public void setIdd(IUserDao idd) {  
        this.idd = idd;  
    }    
} 