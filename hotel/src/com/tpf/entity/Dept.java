package com.tpf.entity;  
  
import java.io.Serializable;


public class Dept implements Serializable {  
  
	private static final long serialVersionUID = 1L;
	//封装字段  
    private int deptno;  
    private String dname;  
    private String loc;  
      
    //无参构造函数  
    public Dept() {  
        // TODO Auto-generated constructor stub  
    }  
      
    //有参构造函数  
    public Dept(int deptno, String dname, String loc) {  
        super();  
        this.deptno = deptno;  
        this.dname = dname;  
        this.loc = loc;  
    }  
  
    //封装GET SET方法  
    public int getDeptno() {  
        return deptno;  
    }  
    public void setDeptno(int deptno) {  
        this.deptno = deptno;  
    }  
    public String getDname() {  
        return dname;  
    }  
    public void setDname(String dname) {  
        this.dname = dname;  
    }  
    public String getLoc() {  
        return loc;  
    }  
    public void setLoc(String loc) {  
        this.loc = loc;  
    }  
}  