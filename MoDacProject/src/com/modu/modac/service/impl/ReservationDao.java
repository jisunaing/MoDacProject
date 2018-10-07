package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.ReservationService;

@Repository
public class ReservationDao implements ReservationService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public void receiptInsert(Map map) {
		System.out.println("ReservationDao"+map);
		template.insert("receiptInsert",map);
	}

	@Override
	public void reservationInset(Map map) {
		template.insert("reservationInsert",map);
	}

	@Override
	public int reservationCancel(Map map) {
		return template.update("reservationCancel",map);		
	}
	
	@Override
	public int receptCancel(Map map) {
		return template.update("receptCancel",map);
	}

	@Override
	public List<Map> reservationList(Map map) {
		return template.selectList("reservationList", map);
	}

	@Override
	public List<Map> receiptList(Map map) {
		return template.selectList("receiptList", map);
	}

	
	
	
}
