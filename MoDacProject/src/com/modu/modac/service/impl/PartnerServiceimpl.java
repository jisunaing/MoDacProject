package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.PartnerService;

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

}
