package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.PartnerNGeneralQNADto;
import com.modu.modac.service.PartnerNGeneralQNAService;


@Repository
public class PartnerNGeneralQNADao implements PartnerNGeneralQNAService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public int getTotalRecord(Map map) {
		
		return template.selectOne("PartnerNGeneralQnATotalRecord",map);
	}

	@Override
	public int commentDelete(Map map) {
		
		return template.insert("PartnerNGeneralQnADelete",map);
	}

	@Override
	public int commentInsert(Map map) {
		
		return template.insert("PartnerNGeneralQnAInsert",map);
	}

	@Override
	public int commentUpdate(Map map) {
		return template.insert("PartnerNGeneralQnAUpdate",map);
	}

	@Override
	public List<PartnerNGeneralQNADto> selectList(Map map) {
		
		return template.selectList("PartnerNGeneralQnAList",map);
		
		
	}//selectList
	

	@Override
	public List<Map> selectCommentList(Map map) {
	
		return template.selectList("PartnerNGeneralQnACommentList",map);
	}///selectCommentList

	@Override
	public PartnerNGeneralQNADto selectOne(Map map) {
		
		return template.selectOne("PartnerNGeneralQnAOne",map);
	}


	
	
	
}//PartnerNGeneralQNADao
