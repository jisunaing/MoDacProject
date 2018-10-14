package com.modu.modac.service;

public class PartnerNAdminQnACommentDto {

	private String rno;
	private String no;
	private String rcontents;   
	private java.sql.Date replydate;  
	private String pid;
	public String getRno() {
		return rno;
	}
	public void setRno(String rno) {
		this.rno = rno;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getRcontents() {
		return rcontents;
	}
	public void setRcontents(String rcontents) {
		this.rcontents = rcontents;
	}
	public java.sql.Date getReplydate() {
		return replydate;
	}
	public void setReplydate(java.sql.Date replydate) {
		this.replydate = replydate;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
}//PartnerNAdminQnADto
