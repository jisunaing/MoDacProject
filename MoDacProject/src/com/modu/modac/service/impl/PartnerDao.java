package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.PartnerService;
import com.modu.modac.service.ReceptionDto;

@Repository
public class PartnerDao implements PartnerService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<Map> hospitalReservationList(Map map) {
		return template.selectList("hospitalReservationList", map);
	}

	@Override
	public List<Map> hospitalreservationHistory(Map map) {
		return template.selectList("hospitalreservationHistory",map);
	}
	
	@Override
	public List<Map> hospitalReceiptList(Map map) {
		return template.selectList("hospitalReceiptList", map);
	}

	@Override
	public List<Map> hospitalreceiptHistory(Map map) {
		return template.selectList("hospitalreceiptHistory", map);
	}

	@Override
	public ReceptionDto hospitalReceiptView(Map map) {
		return template.selectOne("hospitalReceiptView",map);
	}

}
