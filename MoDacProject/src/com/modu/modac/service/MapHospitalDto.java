package com.modu.modac.service;
                 
public class MapHospitalDto {
	
	// 일반병원 및 제휴병원 공통 멤버 변수
	private String hosno;
	private String hosaddr;
	private String hosname;
	private String hosphone;
	private String mon;
	private String tue;
	private String wed;
	private String thu;
	private String fri;
	private String sat;
	private String sun;
	private String holiday;
	private String subjectcode;
	private String subname;
	private String hoslat;
	private String hoslng;
	
	
	// 제휴병원에만 해당하는 멤버 변수
	private String pid;
	private String lunch;
	private String pwebsite;
	
	public String getHoslat() {
		return hoslat;
	}
	public void setHoslat(String hoslat) {
		this.hoslat = hoslat;
	}
	public String getHoslng() {
		return hoslng;
	}
	public void setHoslng(String hoslng) {
		this.hoslng = hoslng;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getLunch() {
		return lunch;
	}
	public void setLunch(String lunch) {
		this.lunch = lunch;
	}
	public String getPwebsite() {
		return pwebsite;
	}
	public void setPwebsite(String pwebsite) {
		this.pwebsite = pwebsite;
	}
	public String getHosno() {
		return hosno;
	}
	public void setHosno(String hosno) {
		this.hosno = hosno;
	}
	public String getHosaddr() {
		return hosaddr;
	}
	public void setHosaddr(String hosaddr) {
		this.hosaddr = hosaddr;
	}
	public String getHosname() {
		return hosname;
	}
	public void setHosname(String hosname) {
		this.hosname = hosname;
	}
	public String getHosphone() {
		return hosphone;
	}
	public void setHosphone(String hosphone) {
		this.hosphone = hosphone;
	}
	public String getMon() {
		return mon;
	}
	public void setMon(String mon) {
		this.mon = mon;
	}
	public String getTue() {
		return tue;
	}
	public void setTue(String tue) {
		this.tue = tue;
	}
	public String getWed() {
		return wed;
	}
	public void setWed(String wed) {
		this.wed = wed;
	}
	public String getThu() {
		return thu;
	}
	public void setThu(String thu) {
		this.thu = thu;
	}
	public String getFri() {
		return fri;
	}
	public void setFri(String fri) {
		this.fri = fri;
	}
	public String getSat() {
		return sat;
	}
	public void setSat(String sat) {
		this.sat = sat;
	}
	public String getSun() {
		return sun;
	}
	public void setSun(String sun) {
		this.sun = sun;
	}
	public String getHoliday() {
		return holiday;
	}
	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}
	public String getSubjectcode() {
		return subjectcode;
	}
	public void setSubjectcode(String subjectcode) {
		this.subjectcode = subjectcode;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	
	
	
}
