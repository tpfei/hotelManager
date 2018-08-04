package com.tpf.entity;
import java.io.Serializable;

public class Kfpz implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int pz_id;
	private String name;
	private String type;
	private String money;
	private String bz;
	public int getPz_id() {
		return pz_id;
	}
	public void setPz_id(int pz_id) {
		this.pz_id = pz_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
}
