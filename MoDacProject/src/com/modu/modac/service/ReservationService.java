package com.modu.modac.service;

import java.util.List;
import java.util.Map;

public interface ReservationService {
	/* dao와 impl에서 오버라이딩할 추상메소드 */
	/*
	//로그인 용]
	boolean isMember(Map map);
	//목록용]
	List<dto타입> selectList(Map map);
	//전체 레코드 수]
	int getTotalRecord(Map map);
	//상세보기용]
	dto타입 selectOne(Map map);
	//입력/수정/삭제용]
	int delete(Map map);
	int insert(Map map);
	int update(Map map);
	*/
	void receiptInsert(Map map);
	void reservationInset(Map map);
	void reservationDelete(Map map);
	List<Map> reservationList(Map map);
	List<Map> receiptList(Map map);
	
	
}
