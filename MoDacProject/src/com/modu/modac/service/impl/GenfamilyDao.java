package com.modu.modac.service.impl;
            
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.GenfamilyDto;
import com.modu.modac.service.GenfamilyService;
import com.modu.modac.service.GenmemberDto;
import com.modu.modac.service.TestService;

/* Repository어노테이션 */
@Repository
public class GenfamilyDao implements GenfamilyService {
	/* SqlSessionTeplate선언 - 리소스 등록 */
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public GenfamilyDto selectOne(Map map) {
		return template.selectOne("genfamilySelectOne", map);
	}

	@Override
	public List<GenfamilyDto> selectList(Map map) {
		return template.selectList("genfamilySelectList", map);
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Map map) {
		return template.insert("genfamilyInsert",map);
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	


}