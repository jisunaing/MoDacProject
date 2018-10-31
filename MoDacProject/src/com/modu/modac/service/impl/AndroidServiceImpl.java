package com.modu.modac.service.impl;           

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.AndroidService;


@Service("androidService")
public class AndroidServiceImpl implements AndroidService{
	//DAO계열 클래스 주입받기]
	@Resource(name="androidDao")
	private AndroidDao dao;

	@Override
	public List<Map> receiptList(Map map) {
		
		return dao.receiptList(map);
	}

	@Override
	public List<Map> reservationList(Map map) {
		
		return dao.reservationList(map);
	}

	@Override
	public List<Map> receiptView(Map map) {
		
		return dao.receiptView(map);
	}

	@Override
	public List<Map> reservationView(Map map) {
		
		return dao.reservationView(map);
	}

	@Override
	public List<Map> genInfo(Map map) {
		
		return dao.genInfo(map);
		}

	@Override
	public List<Map> genHealthInfo(Map map) {
		return dao.genHealthInfo(map);
	}

	@Override
	public int genInfoUpdate(Map map) {
		
		return dao.genInfoUpdate(map);
	}

	@Override
	public int genHealthInfoUpdate(Map map) {
	
		return dao.genHealthInfoUpdate(map);
	}
	
	
	
	
	
}//AndroidServiceImpl
