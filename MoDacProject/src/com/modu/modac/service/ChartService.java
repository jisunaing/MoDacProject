package com.modu.modac.service;

import java.util.List;
import java.util.Map;

public interface ChartService {
	List<String> dayList(Map map);

	List<Map> reservationReception(Map map);

	List<Map> mainChartTableRecord();
}