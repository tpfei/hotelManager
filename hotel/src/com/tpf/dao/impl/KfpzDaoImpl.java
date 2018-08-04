package com.tpf.dao.impl;  
  
import java.util.List;  
  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tpf.dao.IKfpzDao;
import com.tpf.entity.Kfpz;

@Repository//自动扫描
public class KfpzDaoImpl   
extends HibernateDaoSupport  
implements IKfpzDao {  
    public int delete(int id) {   
        try {  
            //获取对象的id  
        	Kfpz d=this.getHibernateTemplate().get(Kfpz.class,id);  
            //执行删除方法  删除id  
            System.out.println(d);
            this.getHibernateTemplate().delete(d);  
            //删除成功  return 1;  
            return 1;  
        } catch (Exception e)  {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
    public List<Kfpz> findAll() {   
        //查询获取全部的数据  
        List<Kfpz> list=(List<Kfpz>) this.getHibernateTemplate().find("from Kfpz");  
        return list;  
    }   
    public Kfpz findById(int id) {    
        //查询出对象的id  
    	Kfpz dd=this.getHibernateTemplate().get(Kfpz.class, id);
        return dd;  
    }
    public int save(Kfpz d) {
        try {  
            this.getHibernateTemplate().save(d);  
            return 1;  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
    public int update(Kfpz d) {   
        try {  
            this.getHibernateTemplate().update(d);  
            return 1;  
        } catch (Exception e) {   
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
}  