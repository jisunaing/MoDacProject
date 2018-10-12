package com.modu.modac.service;

public class PartnerNAdminQnADto {

	private String no;
	private String pid;
	private String title;
	private String content;
	private java.sql.Date postadate;  
	
	//댓글 수 저장용	
	private String commentCount;
	
	
	
	
	//게터세터	
	public java.sql.Date getPostadate() {
		return postadate;
	}
	public void setPostadate(java.sql.Date postadate) {
		this.postadate = postadate;
	}
	public String getNo() {
		return no;
	}
	public String getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	
	
	
	
	
	
	
	
}//PartnerNAdminQnADto
