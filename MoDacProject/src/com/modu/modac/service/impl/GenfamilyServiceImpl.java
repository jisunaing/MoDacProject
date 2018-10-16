package com.modu.modac.service.impl;           

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.GenfamilyDto;
import com.modu.modac.service.GenfamilyService;

/* service어노테이션 */
@Service("genfamilyService")
public class GenfamilyServiceImpl implements GenfamilyService {
	/* dao 리소스 등록 */
	@Resource(name="genfamilyDao")
	private GenfamilyDao dao;

	@Override
	public GenfamilyDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public List<GenfamilyDto> selectList(Map map) {
		return dao.selectList(map);
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
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
