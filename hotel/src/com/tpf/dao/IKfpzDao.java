package com.tpf.dao;  
  
import java.util.List;
import org.springframework.stereotype.Repository;
import com.tpf.entity.Kfpz;

@Repository//自动扫描
public interface IKfpzDao {  
    //查询  
    public List<Kfpz> findAll();  
    //增加  
    public int save(Kfpz d);  
    //删除  
    public int delete(int id);  
    //修改  
    public int update(Kfpz d);  
    //根据ID查询  
    public Kfpz findById(int id);  
      
}  
