package com.tpf.action;  
  
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tpf.entity.Kfpz;
import com.tpf.service.IKfpzService;  
  
public class KfpzAction extends ActionSupport {  
      
	private static final long serialVersionUID = 1L;
    private IKfpzService ids;  
    private List<Kfpz> list;  
    private Kfpz kfpz;  
    private int id;  
      
    //查询  
    public String show(){  
        list=ids.findAll();
        return "showkfpz";  
    }  
      
    //删除  
    public String delete(){  
        ids.delete(id);  
        return "deletekfpz";  
          
    } 
    
    //删除  
    public String addpage(){    
        return "addpage";  
          
    } 
      
    //预修改  
    public String prepup(){  
    	kfpz=ids.findById(id);  
        return "prepup";  
    }  
      
    //增加  
    public String save(){  
        ids.save(kfpz);  
        return "addkfpz";  
    }  
  
    //修改  
    public String update(){  
        ids.update(kfpz);  
        return "updatekfpz";  
    }  
      
      
    public IKfpzService getIds() {  
        return ids;  
    }  
  
    public void setIds(IKfpzService ids) {  
        this.ids = ids;  
    }  
  
    public List<Kfpz> getList() {  
        return list;  
    }  
  
    public void setList(List<Kfpz> list) {  
        this.list = list;  
    }  
  
  
    public Kfpz getKfpz() {
		return kfpz;
	}

	public void setKfpz(Kfpz kfpz) {
		this.kfpz = kfpz;
	}

	public int getId() {  
        return id;  
    }  
      
    public void setId(int id) {  
        this.id = id;  
    }  
      
}  