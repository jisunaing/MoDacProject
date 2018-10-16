package com.modu.modac.service;

import java.sql.Date;

public class PartnerNGeneralQNADto {
	
	/// 문의 글 쪽
	private String qno;
	private Date postdate; 
	private String title;
	private String genid;
	private String subjectcode;
	private String qcontent;
	
	//댓글 수 저장용	
	private String commentCount;
//////////////////////////////////////////////	
	
	////// 특정 글에 대한 코멘트
	
	private String ano;
	private String atitle;
	private Date apostdsate;
	private String acontent;
	private String pid;
	
	
	
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public Date getApostdsate() {
		return apostdsate;
	}
	public void setApostdsate(Date apostdsate) {
		this.apostdsate = apostdsate;
	}
	public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
	public String getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}
	public String getQno() {
		return qno;
	}
	public void setQno(String qno) {
		this.qno = qno;
	}
	public Date getPostdate() {
		return postdate;
	}
	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenid() {
		return genid;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}
	public String getSubjectcode() {
		return subjectcode;
	}
	public void setSubjectcode(String subjectcode) {
		this.subjectcode = subjectcode;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	
	

}//PartnerNGeneralQNADto
