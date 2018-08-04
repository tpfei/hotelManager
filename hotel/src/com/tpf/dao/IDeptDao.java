package com.tpf.dao;  
  
import java.util.List;
import org.springframework.stereotype.Repository;
import com.tpf.entity.Dept; 

@Repository//自动扫描
public interface IDeptDao {  
    //查询  
    public List<Dept> findAll();  
    //增加  
    public int save(Dept d);  
    //删除  
    public int delete(int id);  
    //修改  
    public int update(Dept d);  
    //根据ID查询  
    public Dept findById(int id);  
      
}  
