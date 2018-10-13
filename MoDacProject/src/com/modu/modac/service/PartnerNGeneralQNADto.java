package com.modu.modac.service;
              
import java.sql.Date;              

public class PartnerNGeneralQNADto {
	
	private String qno;
	private Date postdate; 
	private String title;
	private String genid;
	private String subjectcode;
	private String qcontent;
	
	//댓글 수 저장용	
	private String commentCount;
	
	
	
	
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
	
	
	
	//게터세터
	
	
	
	
	
	
	

}//PartnerNGeneralQNADto
