package com.modu.modac.service;

import java.util.List;
import java.util.Map;


public interface PartnerService {
	
	/* dao와 impl에서 오버라이딩할 추상메소드 */
	
	//로그인 용
	boolean isMember(Map map);
	
	//회원 선별용
	boolean isAccept(Map map);
		
	//목록용]
	List<PartnerDto> selectList(Map map);
	
	// Subject Insert용
	int subjectList(Map map);
	
	//특정 hosno에 대한 subject 코드 가져오기	
	List<Map> subjectListAll(Map map);
	
	
	
	//상세보기용]
	PartnerDto selectOne(Map map);
		
	//입력/수정/삭제용]
	int delete(Map map);
	int insert(Map map);
	int updateone(Map map);
	int updatetwo(Map map);
	
	//전체 레코드 수]
	int getTotalRecord(Map map);
	
	//탈퇴 신청용
	int withdrawal(Map map);

	List<Map> hospitalReservationList(Map map);
	List<Map> hospitalReceiptList(Map map);
	
	
}
