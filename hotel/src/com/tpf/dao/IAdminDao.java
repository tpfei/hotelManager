package com.tpf.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.tpf.entity.Admin;

import java.sql.SQLException;  
import java.util.List;  
  
import javax.annotation.Resource;  
  
import org.hibernate.Criteria;  
import org.hibernate.HibernateException;  
import org.hibernate.Query;  
import org.hibernate.Session;  
import org.hibernate.criterion.Restrictions;



@Repository//自动扫描
public interface IAdminDao {  
    //登录
	public Admin check(String userName, String userPassword) throws SQLException;
    //查询  
    public List<Admin> findAll();
    //增加  
    public int save(Admin d); 
    //修改  
    public int update(Admin d);  
    //根据ID查询  
    public Admin findById(int id); 

}

