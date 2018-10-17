package com.modu.modac.service.impl;             

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.ChartService;

@Service("chartService")
public class ChartServiceimpl implements ChartService {

	@Resource(name = "chartDao")
	private ChartDao dao;

	@Override
	public List<String> dayList(Map map) {
		return dao.dayList(map);
	}// dayList

	@Override
	public List<Map> reservationReception(Map map) {
		return dao.reservationReception(map);
	}

	@Override
	public List<Map> mainChartTableRecord() {
		return dao.mainChartTableRecord();
	}
}
