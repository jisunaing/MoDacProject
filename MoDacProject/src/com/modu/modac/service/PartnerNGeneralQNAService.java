package com.modu.modac.service;

import java.util.List;
import java.util.Map;

public interface PartnerNGeneralQNAService {
	
	//게시글 전체 목록용]
	List<PartnerNGeneralQNADto> selectList(Map map); 

	//목록에서 마지막 가져오기
	Map selectLast(Map map);
	//코멘트 전체 목록용]
	List<Map> selectCommentList(Map map); 
	
	//병원명 가져오기용]
	PartnerNGeneralQNADto selectHosName(Map map);
	//전체 레코드 수]
	int getTotalRecord(Map map);
	
	// 문의글 상세보기용]
	PartnerNGeneralQNADto selectOne(Map map);
	
	//댓글 입력/수정/삭제용]
	int commentDelete(Map map); //코멘트 삭제
	
	int commentInsert(Map map); //코멘트 입력용
	
	int commentUpdate(Map map); //코멘트 수정용

}//PartnerNGeneralQNAService
