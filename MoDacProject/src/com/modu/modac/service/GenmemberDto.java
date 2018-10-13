package com.modu.modac.service;

import java.sql.Date;  

public class GenmemberDto {
	private String genid;
	private String pwd;
	private String genname;
	private String birthdate;
	private String gender;
	private String email;
	private Date joindate;
	private String addr;
	private String phone;
	//게터/세터
	public String getGenid() {
		return genid;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getGenname() {
		return genname;
	}
	public void setGenname(String genname) {
		this.genname = genname;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
