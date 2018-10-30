package com.modu.modac.service.impl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.modu.modac.service.ChatDAO;
import com.modu.modac.service.ChatRoomVO;
import com.modu.modac.service.MessageVO;

@Repository
public class ChatDAOImpl implements ChatDAO{
	
	@Inject
	private SqlSession session;

	private static String namespace = "mybatis.ChatMapper";

	
	
	@Override
	public void createRoom(ChatRoomVO vo) throws Exception {
		System.out.println("ㅅㅂ");
		session.insert(namespace+".createRoom" , vo);
		System.out.println("시팔");
	}


	//what for?
	@Override
	public ChatRoomVO isRoom(ChatRoomVO vo) throws Exception {
		
		ChatRoomVO roomvo = null;
		roomvo = session.selectOne(namespace+".isRoom", vo);
		System.out.println("ss");
		System.out.println(roomvo);
		
		return roomvo;
	}



	@Override
	public void insertMessage(MessageVO vo) throws Exception {		
		session.insert(namespace+".insertMessage" , vo);
	}


	///not sure if needed
	@Override
	public String getPartner(ChatRoomVO vo) throws Exception {
		
		List<MessageVO> mvo = session.selectList(namespace+".getPartner", vo);
		
		return mvo.get(0).getGenid();
	}


	//not needed//sql deleted
	@Override
	public String getProfile(String str) throws Exception {
		return session.selectOne(namespace+".getProfile" , str);
	}



	@Override
	public String getName(String str) throws Exception {
		return session.selectOne(namespace+".getName" , str);
	}



	@Override
	public List<MessageVO> getMessageList(String str) throws Exception {

		return session.selectList(namespace+".getMessageList" , str);
		
		
	}



	@Override
	public List<ChatRoomVO> getRoomList(String str) throws Exception {
		return session.selectList(namespace+".getRoomList",str);
	}



	@Override
	public List<ChatRoomVO> getRoomList2(String str) throws Exception {
		return session.selectList(namespace+".getRoomList2" , str);
	}



	@Override
	public MessageVO getRecentMessage(String str) throws Exception {
		return session.selectOne(namespace+".getRecentMessage" , str);
	}



	@Override
	public String getTutorId(String str) throws Exception {
		return session.selectOne(namespace+".getTutorId" , str) ;
	}


	//sql missing
	@Override
	public List<ChatRoomVO> getRoomListTutor(String str) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".getRoomListTutor" , str);
	}



	@Override
	public void updateReadTime(int class_id, String genid, String pid) throws Exception {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("pid", pid);
		map.put("genid", genid);
		map.put("CLASS_class_id", class_id);
		session.update(namespace+".updateReadTime" , map);
	}



	@Override
	public int getUnReadCount(String pid, int class_id, String genid) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("pid", pid);
		map.put("genid", genid);
		map.put("CLASS_class_id", class_id);
		
		
		return session.selectOne(namespace+".getUnReadCount" , map);
	}



	@Override
	public int getAllCount(String str) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("genid", str);
		map.put("pid", str);
		if(session.selectOne(namespace+".getAllCount" ,map) ==null) {
			return 0;
		}else {
			
			return session.selectOne(namespace+".getAllCount" ,map);
		}
		
	}



	@Override
	public void updateReadTimeTutor(int class_id , String genid , String pid) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("pid", pid);
		map.put("genid", genid);
		map.put("CLASS_class_id", class_id);
		session.update(namespace+".updateReadTimeTutor" , map);
	}



	@Override
	public int getUnReadCountTutor(String pid, int class_id, String genid) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("pid", pid);
		map.put("genid", genid);
		map.put("CLASS_class_id", class_id);
		
		
		return session.selectOne(namespace+".getUnReadCountTutor" , map);
	}




	
}