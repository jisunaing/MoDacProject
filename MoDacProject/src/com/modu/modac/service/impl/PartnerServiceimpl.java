package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.PartnerService;
import com.modu.modac.service.ReceptionDto;

@Service("partnerService")
public class PartnerServiceimpl implements PartnerService {
	
	@Resource(name="partnerDao")
	private PartnerDao dao;
	
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

}
