package com.tpf.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tpf.dao.ITicketDao;
import com.tpf.entity.Ticket;
import com.tpf.service.ITicketService;

public class TicketServiceImpl extends HibernateDaoSupport implements ITicketService{  
    // 调用我们实现类的接口  定义成私有字段进行封装  
    private ITicketDao idd;  
    //查询  
    public List<Ticket> findAll() { 
        return this.idd.findAll();  
    }   
    //用户查询  
    public List<Ticket> findByUser() { 
	    HttpServletRequest request = ServletActionContext.getRequest();
	    HttpSession session = request.getSession();
	    Integer userid = (Integer) session.getAttribute("userid");
	    String str = userid.toString();
        List<Ticket> list = this.idd.findAll();
        System.out.println(str);
        int length=list.size();
        for(int i=0; i<length; i++) {
        	System.out.println(str.equals(list.get(i).getU_id()));
        	if(!str.equals(list.get(i).getU_id())) {
        		list.remove(list.get(i));
        		--length;
        		--i;
        	}
        	System.out.println(list);
        }
        return list;
    }     
    //增加  
    public boolean save(Ticket d) {  
        int aa=this.idd.save(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }    
    //删除  
    public boolean delete(int id) {  
        int aa=this.idd.delete(id);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }    
    //修改  
    public boolean update(Ticket d) {  
        int aa=this.idd.update(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }    
    //根据ID查询  
    public Ticket findById(int id) {  
        return this.idd.findById(id);  
    }    
    //封装的GET  SET方法  
    public ITicketDao getIdd() {  
        return idd;  
    }    
    public void setIdd(ITicketDao idd) {  
        this.idd = idd;  
    } 
}
