package com.tpf.service.impl;  
  
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tpf.dao.IKfxxDao;
import com.tpf.entity.Kfxx;
import com.tpf.service.IKfxxService;

  
public class KfxxServiceImpl extends HibernateDaoSupport implements IKfxxService{  
    // 调用我们实现类的接口  定义成私有字段进行封装  
    private IKfxxDao idd;

	public List<Kfxx> findAll() {	
	    return this.idd.findAll();
	}
    //增加  
    public boolean save(Kfxx k) {  
        int aa=this.idd.save(k);  
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
    //删除  
    public boolean deletes(int[] szid) {   
        int aa=this.idd.deletes(szid);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
    //修改  
    public boolean update(Kfxx k) {   
        int aa=this.idd.update(k);  
        if(aa==0){  
            return true;  
        }else{  
            return false;  
        }  
    }  
 
    //根据ID查询  
    public Kfxx findById(int id) {   
        return this.idd.findById(id);  
    }  
    
	public IKfxxDao getIdd() {
		return idd;
	}

	public void setIdd(IKfxxDao idd) {
		this.idd = idd;
	}  
    

} 