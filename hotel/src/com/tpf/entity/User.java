package com.tpf.entity;  
  
import java.io.Serializable;


public class User implements Serializable {  
  
	private static final long serialVersionUID = 1L;
	//封装字段  
    private int userid;  
    private String username;  
    private String password; 
    private String tel;
      
    //无参构造函数  
    public User() {  
        // TODO Auto-generated constructor stub  
    }  
      
    //有参构造函数  
    public User(int userid, String username, String password, String tel) {  
        super();  
        this.userid = userid;  
        this.username= username;  
        this.password = password;
        this.tel = tel;
    }
    public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	//封装GET SET方法  
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}  