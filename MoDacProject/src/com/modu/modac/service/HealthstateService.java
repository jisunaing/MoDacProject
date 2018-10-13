package com.modu.modac.service;                 
 
import java.util.List;
import java.util.Map;

public interface HealthstateService {
	/* dao와 impl에서 오버라이딩할 추상메소드 */	
	//회원 상세보기용]	
	HealthstateDto selectOne(Map map);	
	//목록용]
	List<HealthstateDto> selectList(Map map);
	//입력/수정/삭제용]
	int delete(Map map);
	int insert(Map map);
	int update(Map map);
}
