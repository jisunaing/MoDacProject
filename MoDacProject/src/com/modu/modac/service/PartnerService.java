package com.modu.modac.service;

import java.util.List;
import java.util.Map;


public interface PartnerService {
	
	/* dao와 impl에서 오버라이딩할 추상메소드 */
	
	//로그인 용
	boolean isMember(Map map);
	//목록용]
	List<PartnerDto> selectList(Map map);
	//상세보기용]
	PartnerDto selectOne(Map map);
	//입력/수정/삭제용]
	int delete(Map map);
	int insert(Map map);
	int update(Map map);
	
	//전체 레코드 수]
	int getTotalRecord(Map map);
}
