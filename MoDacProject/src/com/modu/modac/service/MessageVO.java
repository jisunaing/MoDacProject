package com.modu.modac.service;
import java.util.Date;

import com.google.gson.Gson;


public class MessageVO {
	
	private String message_id;
	private String message_sender;
	private String message_receiver;
	private String message_content;
	private Date message_sendTime;
	private Date message_readTime;
	private String CHATROOM_chatroom_id;
	private String genid;
	//이름 바꿔야함
	private int CLASS_class_id;
	//not sure if this is really needed
	private String user_profileImagePath;
	private String receiver_user_profileImagePath;
	
	private String genname;
	private String class_name;
	private int class_id;
	private String pid;
	private String hosname;
	private int unReadCount;
	public String getMessage_id() {
		return message_id;
	}
	public void setMessage_id(String message_id) {
		this.message_id = message_id;
	}
	public String getMessage_sender() {
		return message_sender;
	}
	public void setMessage_sender(String message_sender) {
		this.message_sender = message_sender;
	}
	public String getMessage_receiver() {
		return message_receiver;
	}
	public void setMessage_receiver(String message_receiver) {
		this.message_receiver = message_receiver;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public Date getMessage_sendTime() {
		return message_sendTime;
	}
	public void setMessage_sendTime(Date message_sendTime) {
		this.message_sendTime = message_sendTime;
	}
	public Date getMessage_readTime() {
		return message_readTime;
	}
	public void setMessage_readTime(Date message_readTime) {
		this.message_readTime = message_readTime;
	}
	public String getCHATROOM_chatroom_id() {
		return CHATROOM_chatroom_id;
	}
	public void setCHATROOM_chatroom_id(String cHATROOM_chatroom_id) {
		CHATROOM_chatroom_id = cHATROOM_chatroom_id;
	}
	public String getGenid() {
		return genid;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}
	public int getCLASS_class_id() {
		return CLASS_class_id;
	}
	public void setCLASS_class_id(int cLASS_class_id) {
		CLASS_class_id = cLASS_class_id;
	}
	public String getUser_profileImagePath() {
		return user_profileImagePath;
	}
	public void setUser_profileImagePath(String user_profileImagePath) {
		this.user_profileImagePath = user_profileImagePath;
	}
	public String getReceiver_user_profileImagePath() {
		return receiver_user_profileImagePath;
	}
	public void setReceiver_user_profileImagePath(String receiver_user_profileImagePath) {
		this.receiver_user_profileImagePath = receiver_user_profileImagePath;
	}
	public String getGenname() {
		return genname;
	}
	public void setGenname(String genname) {
		this.genname = genname;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getHosname() {
		return hosname;
	}
	public void setHosname(String hosname) {
		this.hosname = hosname;
	}
	public int getUnReadCount() {
		return unReadCount;
	}
	public void setUnReadCount(int unReadCount) {
		this.unReadCount = unReadCount;
	}
	
	public static MessageVO convertMessage(String source) {
		MessageVO message = new MessageVO();
		Gson gson = new Gson();
		message = gson.fromJson(source,  MessageVO.class);
		return message;
	}
	@Override
	public String toString() {
		return "MessageVO [message_id=" + message_id + ", message_sender=" + message_sender + ", message_receiver="
				+ message_receiver + ", message_content=" + message_content + ", message_sendTime=" + message_sendTime
				+ ", message_readTime=" + message_readTime + ", CHATROOM_chatroom_id=" + CHATROOM_chatroom_id
				+ ", genid=" + genid + ", pid=" + pid + ", CLASS_class_id="
				+ CLASS_class_id +", genname=" + genname + ", class_name=" + class_name + ", class_id=" + class_id
				+ ", hosname=" + hosname +", unReadCount=" + unReadCount + "]";
	}
	
}