package com.modu.modac.service;
                
import java.util.List;
import java.util.Map;

public interface HealthquestionService {
	
	//목록
	List<HealthquestionDto> selectList(Map map);
	//상세보기
	HealthquestionDto selectOne(Map map);
	//입력/수정/삭제]
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	//전체 레코드 수]
	int getTotalRecord(Map map);
	//답변]
	int reply(Map map);
}
