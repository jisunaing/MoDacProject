package com.modu.modac.service;

import java.sql.Date;                 

public class QnaDto {
	private String no;
	private String title;
	private String content;
	private Date postdate;
	private String genid;
	
	//getter/setter
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
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
	public Date getPostdate() {
		return postdate;
	}
	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}
	public String getGenid() {
		return genid;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}

}
