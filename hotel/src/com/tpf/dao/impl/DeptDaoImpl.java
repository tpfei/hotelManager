package com.tpf.dao.impl;  
  
import java.util.List;  
  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tpf.dao.IDeptDao;
import com.tpf.entity.Dept;  

@Repository//自动扫描
public class DeptDaoImpl   
extends HibernateDaoSupport  
implements IDeptDao {  
    public int delete(int id) {   
        try {  
            //获取对象的id  
            Dept d=this.getHibernateTemplate().get(Dept.class,id);  
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
  
    public List<Dept> findAll() {   
        //查询获取全部的数据  
        List<Dept> list=(List<Dept>) this.getHibernateTemplate().find("from Dept");  
        return list;  
    }  
  
    public Dept findById(int id) {    
        //查询出对象的id  
        Dept dd=this.getHibernateTemplate().get(Dept.class, id);
        return dd;  
    }
  
    public int save(Dept d) {
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
  
    public int update(Dept d) {   
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