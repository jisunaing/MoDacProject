package com.modu.modac.service.impl;

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

}
