package com.modu.modac.service;

import java.util.List;

public interface ChatDAO {
	void createRoom(ChatRoomVO vo) throws Exception;
	ChatRoomVO isRoom(ChatRoomVO vo) throws Exception;
	void insertMessage(MessageVO vo) throws Exception;
	String getPartner(ChatRoomVO vo) throws Exception;
	String getProfile(String str) throws Exception;
	String getName(String str) throws Exception;
	List<MessageVO> getMessageList(String str) throws Exception;
	List<ChatRoomVO> getRoomList(String str) throws Exception;
	List<ChatRoomVO> getRoomList2(String str) throws Exception;
	MessageVO getRecentMessage(String str) throws Exception;
	String getTutorId(String str) throws Exception;
	List<ChatRoomVO> getRoomListTutor(String str) throws Exception;
	void updateReadTime(int class_id, String user_id, String TUTOR_USER_user_id) throws Exception;
	int getUnReadCount(String TUTOR_USER_user_id, int class_id, String user_id) throws Exception;
	int getAllCount(String str);
	void updateReadTimeTutor(int class_id , String user_id , String TUTOR_USER_user_id) throws Exception;
	int getUnReadCountTutor(String TUTOR_USER_user_id, int class_id, String user_id) throws Exception;
	


}
