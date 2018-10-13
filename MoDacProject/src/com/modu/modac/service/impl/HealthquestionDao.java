package com.modu.modac.service.impl;               

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.HealthquestionDto;
import com.modu.modac.service.HealthquestionService;
import com.modu.modac.service.TestService;


@Repository
public class HealthquestionDao implements HealthquestionService{
	/* SqlSessionTeplate선언 - 리소스 등록 */
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reply(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Map map) {
		return template.insert("healthquestionInsert",map);
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public HealthquestionDto selectOne(Map map) {
		return template.selectOne("healthquestionSelectOne",map);
	}

	@Override
	public List<HealthquestionDto> selectList(Map map) {
		return template.selectList("healthquestionSelectList", map);
	}

	

	

}