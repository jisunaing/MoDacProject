package com.modu.modac.service.impl;
                          
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.MapHospitalDto;
import com.modu.modac.service.MapHospitalService;

@Repository
public class MapHospitalDao implements MapHospitalService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	
	@Override
	public List<MapHospitalDto> selectList(Map map) {
		return template.selectList("HospitalList",map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("HospitalTotalCount",map);
	}

	@Override
	public MapHospitalDto selectOne(Map map) {
		return template.selectOne("HospitalOne",map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("HospitalDelete", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("HospitalInsert", map);
	}

	@Override
	public int update(Map map) {
		return template.update("HospitalUpdate", map);
	}

	@Override
	public void close() {
	}

}
