package com.tpf.action;  
  
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tpf.entity.Kfxx;
import com.tpf.service.IKfxxService;  
  
public class KfxxAction extends ActionSupport {  
      
	private static final long serialVersionUID = 1L;
	
    private IKfxxService ids;  
    private List<Kfxx> list;  
    private Kfxx kfxx;  
    private int id; 
    private int[] szid;
      
	//查询  
    public String show() {  
        list=ids.findAll(); 
        return "showkfxx";  
    }  
      
    //删除  
    public String delete(){  
        ids.delete(id);  
        return "deletekfxx";  
          
    }
    
    //添加 
    public String addpage(){  
        return "addpage";  
          
    }
    
    //预订
    public String book(){
        return "book";  
          
    }
    
    //预订
    public String book_tk(){ 
    	list=ids.findAll();
        return "book_ticket";  
          
    }
    
    //删除多条记录
    public String deletes(){  
        ids.deletes(szid);  
        return "deletekfxxs";  
          
    }
      
    //预修改  
    public String prepup(){  
    	kfxx=ids.findById(id);  
        return "prepup";  
    }  
     
	  //增加  
	public String save(){  
	     ids.save(kfxx);  
	     return "addkfxx";  
	} 
  
    //修改  
    public String update(){  
        ids.update(kfxx);  
        return "updatekfxx";  
    }

	public IKfxxService getIds() {
		return ids;
	}

	public void setIds(IKfxxService ids) {
		this.ids = ids;
	}

	public List<Kfxx> getList() {
		return list;
	}

	public void setList(List<Kfxx> list) {
		this.list = list;
	}

	public Kfxx getKfxx() {
		return kfxx;
	}

	public void setKfxx(Kfxx kfxx) {
		this.kfxx = kfxx;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}  
	

	public int[] getSzid() {
		return szid;
	}

	public void setSzid(int[] szid) {
		this.szid = szid;
	}

}  