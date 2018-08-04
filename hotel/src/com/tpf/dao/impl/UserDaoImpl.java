package com.tpf.dao.impl;  
  
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;  
  
import org.hibernate.SessionFactory;  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.tpf.dao.IUserDao;
import com.tpf.entity.User;  

@Repository//自动扫描
public class UserDaoImpl   
extends HibernateDaoSupport  
implements IUserDao {  
	
    public User check(String userName, String userPassword) throws SQLException {
  	
      Connection conn = (Connection) DBUtils.getConnection();//取得数据库链接
      Statement stm = conn.createStatement();//创建数据库操作的语句对象

      //查询数据库返回结果集
      ResultSet rs = stm.executeQuery("select * from user"
              + " where username='"+userName+"' and password='"+userPassword+"'");

      User user = null;
      //遍历结果集，封装用户数据
      if(rs.next()) {
          //创建用户对象
    	  user = new User();
          //设置用户的属性值
    	  user.setUserid(rs.getInt("userid"));
    	  user.setUsername(rs.getString("username"));
    	  user.setPassword(rs.getString("password"));
      }
      //关闭连接
      conn.close();
      //如果没有查询到此用户，那么将返回空指针
      return user;
}
	
    public int delete(int id) {   
        try {  
            //获取对象的id  
        	User d=this.getHibernateTemplate().get(User.class,id);  
            //执行删除方法  删除id  
            this.getHibernateTemplate().delete(d);  
            //删除成功  return 1;  
            return 1;  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            System.out.println(e.getStackTrace());  
        }  
        return 0;  
    }  
  
    public List<User> findAll() {   
        //查询获取全部的数据  
        List<User> list=(List<User>) this.getHibernateTemplate().find("from User");  
        return list;  
    }  
  
    public User findById(int id) {    
        //查询出对象的id  
    	User dd=this.getHibernateTemplate().get(User.class, id);  
        return dd;  
    }  
  
    public int save(User d) {   
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
  
    public int update(User d) {   
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