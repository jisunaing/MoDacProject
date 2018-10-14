package com.modu.modac.service;
             
import java.util.List;
import java.util.Map;

public interface HealthInfoService {
	// 목록용]
	List<HealthInfoDto> selectList(Map map);
	
	// 전체 레코드 수]
	int getTotalRecord(Map map);
	
	// 상세보기용]
	HealthInfoDto selectOne(Map map);
	
	void close();
}
