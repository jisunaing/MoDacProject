package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.PartnerReservationService;
import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReservationDto;

@Service("partnerReservationService")
public class PartnerReservationServiceimpl implements PartnerReservationService {
	
	@Resource(name="partnerReservationDao")
	private PartnerReservationDao dao;
	
	@Override
	public List<Map> hospitalReservationList(Map map) {
		return dao.hospitalReservationList(map);
	}

	@Override
	public List<Map> hospitalReceiptList(Map map) {
		return dao.hospitalReceiptList(map);
	}

	@Override
	public List<Map> hospitalreservationHistory(Map map) {
		return dao.hospitalreservationHistory(map);
	}

	@Override
	public List<Map> hospitalreceiptHistory(Map map) {
		return dao.hospitalreceiptHistory(map);
	}

	@Override
	public ReceptionDto hospitalReceiptView(Map map) {
		return dao.hospitalReceiptView(map);
	}

	@Override
	public ReservationDto hospitalReservationView(Map map) {
		return dao.hospitalReservationView(map);
	}

	@Override
	public ReceptionDto hospitalReceiptHistoryView(Map map) {
		return dao.hospitalReceiptHistoryView(map);
	}

	@Override
	public ReservationDto hospitalReservationHistoryView(Map map) {
		return dao.hospitalReservationHistoryView(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

}
