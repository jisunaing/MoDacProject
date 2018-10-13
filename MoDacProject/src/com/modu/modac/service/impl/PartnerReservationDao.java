package com.modu.modac.service.impl;
               
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.PartnerReservationService;
import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReceptionHistoryListDto;
import com.modu.modac.service.ReceptionListDto;
import com.modu.modac.service.ReservationDto;
import com.modu.modac.service.ReservationHistoryListDto;
import com.modu.modac.service.ReservationListDto;

@Repository
public class PartnerReservationDao implements PartnerReservationService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<ReservationListDto> hospitalReservationList(Map map) {
		return template.selectList("hospitalReservationList", map);
	}

	@Override
	public List<ReservationHistoryListDto> hospitalreservationHistory(Map map) {
		return template.selectList("hospitalreservationHistory",map);
	}
	
	@Override
	public List<ReceptionListDto> hospitalReceiptList(Map map) {
		return template.selectList("hospitalReceiptList", map);
	}

	@Override
	public List<ReceptionHistoryListDto> hospitalreceiptHistory(Map map) {
		return template.selectList("hospitalreceiptHistory", map);
	}

	@Override
	public ReceptionDto hospitalReceiptView(Map map) {
		return template.selectOne("hospitalReceiptView",map);
	}

	@Override
	public ReservationDto hospitalReservationView(Map map) {
		return template.selectOne("hospitalReservationView",map);
	}

	@Override
	public ReceptionDto hospitalReceiptHistoryView(Map map) {
		return template.selectOne("hospitalReceiptHistoryView", map);
	}

	@Override
	public ReservationDto hospitalReservationHistoryView(Map map) {
		return template.selectOne("hospitalReservationHistoryView", map);
	}

	@Override
	public int getTotalReservationRecord(Map map) {
		return template.selectOne("getTotalReservationRecord", map);
	}

	@Override
	public int getTotalReservationHistoryRecord(Map map) {
		return template.selectOne("getTotalReservationHistoryRecord",map);
	}

	@Override
	public int getTotalReceptionRecord(Map map) {
		return template.selectOne("getTotalReceptionRecord", map);
	}

	@Override
	public int getTotalReceptionHistoryRecord(Map map) {
		return template.selectOne("getTotalReceptionHistoryRecord", map);
	}

	@Override
	public void receptListYes(Map map) {
		template.update("receptListYes",map);
	}

	@Override
	public void reservationListYes(Map map) {
		template.update("reservationListYes", map);
	}

	@Override
	public void receptListNo(Map map) {
		template.update("receptListNo", map);
	}

	@Override
	public void reservationListNo(Map map) {
		template.update("reservationListNo", map);
	}
	

}
