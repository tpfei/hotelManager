package com.tpf.dao;

import java.util.List;

import com.tpf.entity.Ticket;


public interface ITicketDao {  
    //查询  
    public List<Ticket> findAll();  
    //增加  
    public int save(Ticket d);  
    //删除  
    public int delete(int id);  
    //修改  
    public int update(Ticket d);  
    //根据ID查询  
    public Ticket findById(int id);  
}
