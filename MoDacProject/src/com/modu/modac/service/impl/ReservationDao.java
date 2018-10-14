package com.modu.modac.service.impl;
                
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReservationDto;
import com.modu.modac.service.ReservationService;

@Repository
public class ReservationDao implements ReservationService{
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public void receiptInsert(Map map) {
		template.insert("receiptInsert",map);
	}

	@Override
	public void reservationInset(Map map) {
		template.insert("reservationInsert",map);
	}

	@Override
	public void reservationCancel(Map map) {
		template.update("reservationCancel",map);		
	}
	
	@Override
	public void receptCancel(Map map) {
		template.update("receptCancel",map);
	}

	@Override
	public List<ReservationDto> reservationList(Map map) {
		return template.selectList("reservationList", map);
	}

	@Override
	public List<ReceptionDto> receiptList(Map map) {
		return template.selectList("receiptList", map);
	}

	@Override
	public void reservationDelete(Map map) {
	}

	@Override
	public int getTotalReservationRecord(Map map) {
		return template.selectOne("getTotalReservation", map);
	}

	@Override
	public int getTotalReservationRecordrec(Map map) {
		return template.selectOne("getTotalReception", map);
	}
}
