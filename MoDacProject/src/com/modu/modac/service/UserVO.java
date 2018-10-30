package com.modu.modac.service;

public class UserVO {
	private String genid;
	private String genname;//굳이 넣어야하나 모르겠음   아이디로만 하면 안됨?
	/*사진위해서 꼭 넣어야하는건 아님*/
	private String user_profileImagePath;
	private int unReadCount;
	
	public String getGenid() {
		return genid;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}
	public String getGenname() {
		return genname;
	}
	public void setGenname(String genname) {
		this.genname = genname;
	}
	public String getUser_profileImagePath() {
		return user_profileImagePath;
	}
	public void setUser_profileImagePath(String user_profileImagePath) {
		this.user_profileImagePath = user_profileImagePath;
	}
	public int getUnReadCount() {
		return unReadCount;
	}
	public void setUnReadCount(int unReadCount) {
		this.unReadCount = unReadCount;
	}
	
	
	
	
}