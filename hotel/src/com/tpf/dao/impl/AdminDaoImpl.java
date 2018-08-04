package com.tpf.dao.impl;  
  
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;  
  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.tpf.dao.IAdminDao;
import com.tpf.dao.impl.DBUtils;
import com.tpf.entity.Admin;

@Repository//自动扫描
public class AdminDaoImpl   
extends HibernateDaoSupport  
implements IAdminDao { 
    
    public Admin check(String userName, String userPassword) throws SQLException {
//        Connection conn = (Connection) this.getHibernateTemplate();//取得数据库链接
    	
        Connection conn = (Connection) DBUtils.getConnection();//取得数据库链接
        Statement stm = conn.createStatement();//创建数据库操作的语句对象

        //查询数据库返回结果集
        ResultSet rs = stm.executeQuery("select * from adminInfo"
                + " where admin_name='"+userName+"' and admin_password='"+userPassword+"'");

        Admin admin = null;
        //遍历结果集，封装用户数据
        if(rs.next()) {
            //创建用户对象
            admin = new Admin();
            //设置用户的属性值
            admin.setAdmin_id(rs.getInt("admin_id"));
            admin.setAdmin_name(rs.getString("admin_name"));
            admin.setAdmin_password(rs.getString("admin_password"));
        }
        //关闭连接
        conn.close();
        //如果没有查询到此用户，那么将返回空指针
        return admin;
  }
    
    public List<Admin> findAll() {   
        //查询获取全部的数据  
        List<Admin> list=(List<Admin>) this.getHibernateTemplate()
        		.find("from Admin");
        return list; 
    }   
  
    public Admin findById(int id) {  
        //查询出对象的id  
    	Admin dd=this.getHibernateTemplate().get(Admin.class, id);  
        return dd;  
    }  
  
    public int save(Admin d) {  
        // TODO Auto-generated method stub  
        try {  
            //调用我们定义的接口  增加数据  
            this.getHibernateTemplate().save(d);  
            return 1;  
        } catch (Exception e) {  
            // TODO: handle exception  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
  
    public int update(Admin d) {  
        // TODO Auto-generated method stub  
        try {  
            //调用我们定义的接口  增加数据  
            this.getHibernateTemplate().update(d);  
            return 1;  
        } catch (Exception e) {  
            // TODO: handle exception  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }

}  