package com.tpf.dao;  
  
import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;
import com.tpf.entity.User; 

@Repository//自动扫描
public interface IUserDao {  
	
    //登录
	public User check(String userName, String userPassword) throws SQLException;
    //查询  
    public List<User> findAll();  
    //增加  
    public int save(User d);  
    //删除  
    public int delete(int id);  
    //修改  
    public int update(User d);  
    //根据ID查询  
    public User findById(int id);  
      
}  
