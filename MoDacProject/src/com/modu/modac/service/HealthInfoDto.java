package com.modu.modac.service;
            
public class HealthInfoDto {
	
	private String healthinfono;
	private String categno;
	private String title;
	private String content;
	private java.sql.Date postdate;
	private String image;
	private String categname;
	
	public String getCategname() {
		return categname;
	}
	public void setCategname(String categname) {
		this.categname = categname;
	}
	public String getHealthinfono() {
		return healthinfono;
	}
	public void setHealthinfono(String healthinfono) {
		this.healthinfono = healthinfono;
	}
	public String getCategno() {
		return categno;
	}
	public void setCategno(String categno) {
		this.categno = categno;
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
	public java.sql.Date getPostdate() {
		return postdate;
	}
	public void setPostdate(java.sql.Date postdate) {
		this.postdate = postdate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

}
