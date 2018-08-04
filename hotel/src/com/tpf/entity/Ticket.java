package com.tpf.entity;

import java.io.Serializable;

public class Ticket implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int t_id;
	private String kflx;
	private String rzrq;
	private String tfrq;
	private String xingming;
	private String amount;
	private String roomnum;
	private String cost;
	private String u_id;
	private String state;
	
    
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public String getKflx() {
		return kflx;
	}
	public void setKflx(String kflx) {
		this.kflx = kflx;
	}
	public String getRzrq() {
		return rzrq;
	}
	public void setRzrq(String rzrq) {
		this.rzrq = rzrq;
	}
	public String getTfrq() {
		return tfrq;
	}
	public void setTfrq(String tfrq) {
		this.tfrq = tfrq;
	}
	public String getXingming() {
		return xingming;
	}
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getRoomnum() {
		return roomnum;
	}
	public void setRoomnum(String roomnum) {
		this.roomnum = roomnum;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
}
