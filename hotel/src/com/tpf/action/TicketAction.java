package com.tpf.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tpf.entity.Ticket;
import com.tpf.service.ITicketService;

public class TicketAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
    private ITicketService ids;  
    private List<Ticket> list; 
    private Ticket ticket;  
    private int id;  
   
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
/*	//预订 
    public String book(){  
        return "book";  
    } 
    
	//预订 
    public String book_tk(){ 
    	list=ids.findAll();
        return "book_tk";  
    } */

	//查询  
    public String show_all(){  
        list=ids.findAll();
        return "showallticket";  
    } 
    
	//用户查询  
    public String show_usr(){  
        list=ids.findByUser();
        return "showuserticket";  
    }
             
    //删除  
    public String delete(){  
        ids.delete(id);  
        return "deleteticket";            
    }  
      
    //预修改  
    public String prepup(){  
        ticket=ids.findById(id);  
        return "prepup";  
    }  
      
    //增加  
    public String save(){  
        ids.save(ticket);  
        return "saveticket";  
    }  
  
    //修改  
    public String update(){  
        ids.update(ticket);  
        return "updateticket";  
    }  
    
    public ITicketService getIds() {
		return ids;
	}

	public void setIds(ITicketService ids) {
		this.ids = ids;
	}

	public List<Ticket> getList() {
		return list;
	}

	public void setList(List<Ticket> list) {
		this.list = list;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}
	
}
