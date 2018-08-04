package com.tpf.action;  
  
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tpf.entity.Dept;
import com.tpf.service.IDeptService;  
  
public class DeptAction extends ActionSupport {  
      
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//定义出来我们的对象名  id  以及泛型集合  
    private IDeptService ids;  
    private List<Dept> list;  
    private Dept dept;  
    private int id;  
      
    //查询  
    public String show(){  
        list=ids.findAll();
        return "zhanshi";  
    }  
      
    //删除  
    public String delete(){  
        ids.delete(id);  
        return "find";  
          
    }  
      
    //预修改  
    public String prepup(){  
        dept=ids.findById(id);  
        return "prepup";  
    }  
      
    //增加  
    public String save(){  
        ids.save(dept);  
        return "find";  
    }  
  
    //修改  
    public String update(){  
        ids.update(dept);  
        return "find";  
    }  
      
      
    public IDeptService getIds() {  
        return ids;  
    }  
  
    public void setIds(IDeptService ids) {  
        this.ids = ids;  
    }  
  
    public List<Dept> getList() {  
        return list;  
    }  
  
    public void setList(List<Dept> list) {  
        this.list = list;  
    }  
  
    public Dept getDept() {  
        return dept;  
    }  
  
    public void setDept(Dept dept) {  
        this.dept = dept;  
    }  
  
    public int getId() {  
        return id;  
    }  
      
    public void setId(int id) {  
        this.id = id;  
    }  
      
}  