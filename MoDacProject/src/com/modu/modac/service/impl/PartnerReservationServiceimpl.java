package com.modu.modac.service.impl;            
              
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.PartnerReservationService;
import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReceptionHistoryListDto;
import com.modu.modac.service.ReceptionListDto;
import com.modu.modac.service.ReservationDto;
import com.modu.modac.service.ReservationHistoryListDto;
import com.modu.modac.service.ReservationListDto;

@Service("partnerReservationService")
public class PartnerReservationServiceimpl implements PartnerReservationService {
	
	@Resource(name="partnerReservationDao")
	private PartnerReservationDao dao;
	
	@Override
	public List<ReservationListDto> hospitalReservationList(Map map) {
		return dao.hospitalReservationList(map);
	}

	@Override
	public List<ReceptionListDto> hospitalReceiptList(Map map) {
		return dao.hospitalReceiptList(map);
	}

	@Override
	public List<ReservationHistoryListDto> hospitalreservationHistory(Map map) {
		return dao.hospitalreservationHistory(map);
	}

	@Override
	public List<ReceptionHistoryListDto> hospitalreceiptHistory(Map map) {
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
	public int getTotalReservationRecord(Map map) {
		return dao.getTotalReservationRecord(map);
	}

	@Override
	public int getTotalReservationHistoryRecord(Map map) {
		return dao.getTotalReservationHistoryRecord(map);
	}

	@Override
	public int getTotalReceptionRecord(Map map) {
		return dao.getTotalReceptionRecord(map);
	}

	@Override
	public int getTotalReceptionHistoryRecord(Map map) {
		return dao.getTotalReceptionHistoryRecord(map);
	}


	@Override
	public void receptListYes(Map map) {
		dao.receptListYes(map);
	}

	@Override
	public void reservationListYes(Map map) {
		dao.reservationListYes(map);
	}

	@Override
	public void receptListNo(Map map) {
		dao.receptListNo(map);
	}

	@Override
	public void reservationListNo(Map map) {
		dao.reservationListNo(map);
	}


}
