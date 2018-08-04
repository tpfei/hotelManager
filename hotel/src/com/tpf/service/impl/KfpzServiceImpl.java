package com.tpf.service.impl;  
  
import java.util.List;  
  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tpf.dao.IKfpzDao;
import com.tpf.entity.Kfpz;
import com.tpf.service.IKfpzService;
 
  
public class KfpzServiceImpl extends HibernateDaoSupport implements IKfpzService{  
    // 调用我们实现类的接口  定义成私有字段进行封装  
    private IKfpzDao idd;  
    //查询  
    public List<Kfpz> findAll() {  
        return this.idd.findAll();  
    }  
  
    //增加  
    public boolean save(Kfpz d) {  
        int aa=this.idd.save(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //删除  
    public boolean delete(int id) {  
        int aa=this.idd.delete(id);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //修改  
    public boolean update(Kfpz d) {  
        int aa=this.idd.update(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //根据ID查询  
    public Kfpz findById(int id) {  
        return this.idd.findById(id);  
    }  
  
    //封装的GET  SET方法  
    public IKfpzDao getIdd() {  
        return idd;  
    }  
  
    public void setIdd(IKfpzDao idd) {  
        this.idd = idd;  
    }    
} 