package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.ReservationService;

@Service("reservationService")
public class ReservationServiceimpl implements ReservationService {
	
	@Resource(name="reservationDao")
	private ReservationDao dao;
	
	
	@Override
	public void receiptInsert(Map map) {
		System.out.println("ReservationServiceimpl : "+map);
		dao.receiptInsert(map);
	}

	@Override
	public void reservationInset(Map map) {
		dao.reservationInset(map);
	}

	@Override
	public int reservationCancel(Map map) {
		return dao.reservationCancel(map);
	}
	
	@Override
	public int receptCancel(Map map) {
		return dao.receptCancel(map);
	}

	@Override
	public List<Map> reservationList(Map map) {
		return dao.reservationList(map);
	}

	@Override
	public List<Map> receiptList(Map map) {
		return dao.receiptList(map);
	}



}
