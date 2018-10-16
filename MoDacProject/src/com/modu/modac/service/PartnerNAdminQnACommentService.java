package com.modu.modac.service;

import java.util.List;
import java.util.Map;

public interface PartnerNAdminQnACommentService {
	//리스트
	List<Map> selectList(Map map);
	//입력/수정/삭제]
	void insert(Map map);
	void delete(Map map);
	void update(Map map);
}//PartnerNAdminQnACommentService