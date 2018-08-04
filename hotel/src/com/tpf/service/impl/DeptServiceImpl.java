package com.tpf.service.impl;  
  
import java.util.List;  
  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tpf.dao.IDeptDao;
import com.tpf.dao.impl.DeptDaoImpl;
import com.tpf.entity.Dept;
import com.tpf.service.IDeptService;  
  
public class DeptServiceImpl extends HibernateDaoSupport implements IDeptService{  
    // 调用我们实现类的接口  定义成私有字段进行封装  
    private IDeptDao idd;  
    //查询  
    public List<Dept> findAll() {  
        // TODO Auto-generated method stub  
        return this.idd.findAll();  
    }  
  
    //增加  
    public boolean save(Dept d) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.save(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //删除  
    public boolean delete(int id) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.delete(id);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //修改  
    public boolean update(Dept d) {  
        // TODO Auto-generated method stub  
        int aa=this.idd.update(d);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
  
    //根据ID查询  
    public Dept findById(int id) {  
        // TODO Auto-generated method stub  
        return this.idd.findById(id);  
    }  
  
    //封装的GET  SET方法  
    public IDeptDao getIdd() {  
        return idd;  
    }  
  
    public void setIdd(IDeptDao idd) {  
        this.idd = idd;  
    }    
} 