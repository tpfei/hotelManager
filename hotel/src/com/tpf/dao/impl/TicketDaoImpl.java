package com.tpf.dao.impl;  
  
import java.util.ArrayList;
import java.util.List;  
  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tpf.dao.ITicketDao;
import com.tpf.entity.Kfxx;
import com.tpf.entity.Ticket;  

@Repository//自动扫描
public class TicketDaoImpl   
extends HibernateDaoSupport  
implements ITicketDao {  
    public int delete(int id) {   
        try {  
            //获取对象的id  
        	Ticket t=this.getHibernateTemplate().get(Ticket.class,id); 
        	System.out.println(t);
            //执行删除方法  删除id  
            this.getHibernateTemplate().delete(t);  
            //删除成功  return 1;  
            return 1;  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
  
    public List<Ticket> findAll() {   
        //查询获取全部的数据  
        List<Ticket> list=(List<Ticket>) this.getHibernateTemplate().find("from Ticket");  
        return list;  
    }
  
    public Ticket findById(int id) {    
        //查询出对象的id  
    	Ticket tt=this.getHibernateTemplate().get(Ticket.class, id);  
        return tt;  
    }  
  
    public int save(Ticket d) {   
        try {  
            //调用我们定义的接口  增加数据  
            this.getHibernateTemplate().save(d);  
            return 1;  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
  
    public int update(Ticket d) {   
        try {  
            //调用我们定义的接口  增加数据  
            this.getHibernateTemplate().update(d);  
            return 1;  
        } catch (Exception e) {   
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
}  