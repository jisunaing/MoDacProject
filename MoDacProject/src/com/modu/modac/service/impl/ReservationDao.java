package com.modu.modac.service.impl;

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
		System.out.println("ReservationDao :"+map);
		template.insert("receiptInsert",map);
	}
	
	
	
}
