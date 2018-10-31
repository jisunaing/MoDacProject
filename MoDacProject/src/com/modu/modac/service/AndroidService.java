package com.modu.modac.service;
            
import java.util.List;
import java.util.Map;

public interface AndroidService {

	//접수 내역
	List<Map> receiptList(Map map);
	//상세
	
	List<Map> receiptView(Map map);
	
	
	//예약 내역
	List<Map> reservationList(Map map);
	//상세
	List<Map> reservationView(Map map);
	
	
	//마이페이지
	
	List<Map> genInfo(Map map);
	
	int genInfoUpdate(Map map);
	
	List<Map> genHealthInfo(Map map);
	
	int genHealthInfoUpdate(Map map);

	
	
	
	
}///AndroidService
