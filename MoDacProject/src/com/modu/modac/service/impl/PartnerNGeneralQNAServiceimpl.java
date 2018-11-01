package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.modu.modac.service.PartnerNGeneralQNADto;
import com.modu.modac.service.PartnerNGeneralQNAService;


@Service("partnerNGeneralQNAService")
public class PartnerNGeneralQNAServiceimpl implements PartnerNGeneralQNAService{
	
	@Resource(name="partnerNGeneralQNADao")
	private PartnerNGeneralQNADao dao;

	@Override
	public int getTotalRecord(Map map) {
		
		return dao.getTotalRecord(map);
		
	}

	@Override
	public int commentDelete(Map map) {
		
		return dao.commentDelete(map);
	}

	@Override
	public int commentInsert(Map map) {
		
		return dao.commentInsert(map);
	}

	@Override
	public int commentUpdate(Map map) {
		
		return dao.commentUpdate(map);
	}

	@Override
	public List<PartnerNGeneralQNADto> selectList(Map map) {
		
		return dao.selectList(map);
	}

	@Override
	public List<Map> selectCommentList(Map map) {
		
		return dao.selectCommentList(map);
	}

	@Override
	public PartnerNGeneralQNADto selectOne(Map map) {
		
		return dao.selectOne(map);
	}

	@Override
	public PartnerNGeneralQNADto selectHosName(Map map) {
		return dao.selectHosName(map);
	}

	
	

}//PartnerNAdminQnAServiceImpl
