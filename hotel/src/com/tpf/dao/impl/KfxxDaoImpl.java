package com.tpf.dao.impl;  
  
import java.util.ArrayList;
import java.util.List;  
  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.tpf.dao.IKfxxDao;
import com.tpf.entity.Kfxx;

@Repository//自动扫描
public class KfxxDaoImpl   
extends HibernateDaoSupport  
implements IKfxxDao {  
    public int delete(int id) {   
        try {  
            //获取对象的id  
        	Kfxx k=this.getHibernateTemplate().get(Kfxx.class,id);  
            //执行删除方法  删除id
        	System.out.println(k);
            this.getHibernateTemplate().delete(k);  
            //删除成功  return 1;  
            return 1;  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
    //删除多条记录
    public int deletes(int[] szid) {   
        try {  
            //获取对象的id  
        	List<Kfxx> kfxx = new ArrayList<Kfxx>(); 
            //执行删除方法  删除id
    		for(int i=0; i<szid.length; i++){
    			Kfxx k = this.findById(szid[i]);
    			kfxx.add(k);
    			System.out.println("实现Kfxx：" + k);
    		}
            this.getHibernateTemplate().deleteAll(kfxx);  
            //删除成功  return 1;  
            return 1;  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    } 
    
/*
	public void delAllBook(int[] ids) {
		List<BookInfo> bookInfo = new ArrayList<BookInfo>();
		for(int i=0; i<ids.length;i++){
			BookInfo book = this.findById(ids[i]);
			bookInfo.add(book);
			System.out.println("实现Book：" + book);
		}
		System.out.println("实现批量：" + bookInfo);
		this.getHibernateTemplate().deleteAll(bookInfo);
*/
  
    public List<Kfxx> findAll() {   
        //查询获取全部的数据  
        List<Kfxx> list = (List<Kfxx>) this.getHibernateTemplate().find("from Kfxx");
        System.out.println(list);
        return list;  
    }   
    public Kfxx findById(int id) {    
        //查询出对象的id  
    	Kfxx dd=this.getHibernateTemplate().get(Kfxx.class, id);  
        return dd;  
    }   
    public int save(Kfxx k) {   
        try {  
            //调用我们定义的接口  增加数据  
        	System.out.println(k);
            this.getHibernateTemplate().save(k);
            return 1;  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }   
    public int update(Kfxx d) {   
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