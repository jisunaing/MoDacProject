package com.modu.modac.service.impl;
    
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReservationDto;
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
	public void reservationCancel(Map map) {
		dao.reservationCancel(map);
	}
	
	@Override
	public void receptCancel(Map map) {
		dao.receptCancel(map);
	}

	@Override
	public List<ReservationDto> reservationList(Map map) {
		return dao.reservationList(map);
	}

	@Override
	public List<ReceptionDto> receiptList(Map map) {
		return dao.receiptList(map);
	}

	@Override
	public void reservationDelete(Map map) {
	}

	@Override
	public int getTotalReservationRecord(Map map) {
		return dao.getTotalReservationRecord(map);
	}

	@Override
	public int getTotalReservationRecordrec(Map map) {
		return dao.getTotalReservationRecordrec(map);
	}

}
