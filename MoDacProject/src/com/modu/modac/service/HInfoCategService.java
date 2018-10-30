package com.modu.modac.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

public interface HInfoCategService {
	// list
	List<HInfoCategDto> selectList(Map map);
	
	// view
	HInfoCategDto selectOne(Map map);

	// record_count
	int getTotalRecord(Map map);
	 
}