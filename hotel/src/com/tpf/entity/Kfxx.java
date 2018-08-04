package com.tpf.entity;

import java.io.Serializable;  

public class Kfxx implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int kf_id;
	private String kflx;
	private int lx_id;
	private String fjh;
	private String wifi;
	private String tv;
	private String jcjj;
	private String fjmj;
	private String cost;	
	
	
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}

	public int getKf_id() {
		return kf_id;
	}
	public void setKf_id(int kf_id) {
		this.kf_id = kf_id;
	}
	public String getKflx() {
		return kflx;
	}
	public void setKflx(String kflx) {
		this.kflx = kflx;
	}
	public int getLx_id() {
		return lx_id;
	}
	public void setLx_id(int lx_id) {
		this.lx_id = lx_id;
	}
	public String getFjh() {
		return fjh;
	}
	public void setFjh(String fjh) {
		this.fjh = fjh;
	}
	public String getWifi() {
		return wifi;
	}
	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	public String getTv() {
		return tv;
	}
	public void setTv(String tv) {
		this.tv = tv;
	}
	public String getJcjj() {
		return jcjj;
	}
	public void setJcjj(String jcjj) {
		this.jcjj = jcjj;
	}
	public String getFjmj() {
		return fjmj;
	}
	public void setFjmj(String fjmj) {
		this.fjmj = fjmj;
	}	
}
