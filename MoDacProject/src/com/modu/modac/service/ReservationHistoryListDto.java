package com.modu.modac.service;

public class ReservationHistoryListDto {          
	private String genid;
	private String resnum;
	private String resname;
	private String resdate;
	private String phone;
	private String email;
	private String resaccept;
	public String getGenid() {
		return genid;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}
	public String getResnum() {
		return resnum;
	}
	public void setResnum(String resnum) {
		this.resnum = resnum;
	}
	public String getResname() {
		return resname;
	}
	public void setResname(String resname) {
		this.resname = resname;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
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
	public String getResaccept() {
		return resaccept;
	}
	public void setResaccept(String resaccept) {
		this.resaccept = resaccept;
	}
}
