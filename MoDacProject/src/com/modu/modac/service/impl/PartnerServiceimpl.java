package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.modu.modac.service.PartnerService;
import com.modu.modac.service.PartnerDto;

@Service("partnerService")
public class PartnerServiceimpl implements PartnerService {
	
	@Resource(name="partnerDao")
	private PartnerDao partnerdao;

	
	@Override
	public boolean isMember(Map map) {
		
		return partnerdao.isMember(map);
	}
	

	@Override
	public boolean isAccept(Map map) {
		
		return partnerdao.isAccept(map);
	}

	@Override
	public List<PartnerDto> selectList(Map map) {
		
		return partnerdao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		
		return partnerdao.getTotalRecord(map);
	}

	@Override
	public PartnerDto selectOne(Map map) {
		
		return partnerdao.selectOne(map);
	}

	@Override
	public int delete(Map map) {
		
		return partnerdao.delete(map);
	}

	@Override
	public int insert(Map map) {					
		return partnerdao.insert(map);
	}


	@Override
	public int updateone(Map map) {
		
		return partnerdao.updateone(map);
	}

	@Override
	public int updatetwo(Map map) {
	
		return partnerdao.updatetwo(map);
	}


	@Override
	public int withdrawal(Map map) {
		
		return partnerdao.withdrawal(map);
	}


	@Override
	public int subjectList(Map map) {
		
		return partnerdao.subjectList(map);
	}


	@Override
	public List<Map> subjectListAll(Map map) {
		
		return partnerdao.subjectListAll(map);
	}

	
	
	
	
	
	
	
	

}//PartnerServiceimpl
