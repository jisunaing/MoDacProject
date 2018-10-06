package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.modu.modac.service.PartnerService;
import com.modu.modac.service.PartnerDto;

@Repository
public class PartnerDao implements PartnerService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isMember(Map map) {
		
		
		int count =template.selectOne("PartnerIsMember",map);
		return count==1 ? true : false ;
		
	}////isMember
	

	@Override
	public List<PartnerDto> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PartnerDto selectOne(Map map) {						
		return template.selectOne("PartnerSelectOne",map);
	}//selectOne

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Map map) {

		return template.insert("PartnerJoin",map);
	}

	@Override
	public int updateone(Map map) {
		
		return template.update("Partnerfirst",map);
	}

	@Override
	public int updatetwo(Map map) {
		
		return template.update("Partnersecond",map);
	}
	

	
	
	
}
