package com.modu.modac.service.impl;
              
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.HealthInfoDto;
import com.modu.modac.service.HealthInfoService;

@Repository
public class HealthInfoDao implements HealthInfoService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<HealthInfoDto> selectList(Map map) {
		return template.selectList("HealthInfoList",map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("HealthInfoCount",map);
	}

	@Override
	public HealthInfoDto selectOne(Map map) {
		return template.selectOne("HealthInfoOne",map);
	}

	@Override
	public void close() {
	}
}
