package com.modu.modac.service;

public class ReceptionHistoryListDto {              
	
	private String genid;
	private String recnum;
	private String recname;
	private String recdate;
	private String phone;
	private String email;
	private String recaccept;
	public String getGenid() {
		return genid;
	}
	public String getRecnum() {
		return recnum;
	}
	public void setRecnum(String recnum) {
		this.recnum = recnum;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}
	public String getRecname() {
		return recname;
	}
	public void setRecname(String recname) {
		this.recname = recname;
	}
	public String getRecdate() {
		return recdate;
	}
	public void setRecdate(String recdate) {
		this.recdate = recdate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRecaccept() {
		return recaccept;
	}
	public void setRecaccept(String recaccept) {
		this.recaccept = recaccept;
	}
	
}
