package com.tpf.dao;

import java.util.List;
import com.tpf.entity.Kfxx;

public interface IKfxxDao {
    //查询  
    public List<Kfxx> findAll();  
    //增加  
    public int save(Kfxx d);  
    //删除  
    public int delete(int id);  
    //多个删除  
    public int deletes(int[] szid);
    //修改  
    public int update(Kfxx d);  
    //根据ID查询  
    public Kfxx findById(int id);  
}
