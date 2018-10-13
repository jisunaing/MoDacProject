package com.modu.modac.service.impl;
             
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.HealthstateDto;
import com.modu.modac.service.HealthstateService;
import com.modu.modac.service.TestService;

/* Repository어노테이션 */
@Repository
public class HealthstateDao implements HealthstateService {
	/* SqlSessionTeplate선언 - 리소스 등록 */
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public HealthstateDto selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HealthstateDto> selectList(Map map) {
		return template.selectList("healthstateSelectList", map);
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Map map) {
		return template.insert("healthstateInsert",map);
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	


}