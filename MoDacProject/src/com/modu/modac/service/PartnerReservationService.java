package com.modu.modac.service;

import java.util.List;
import java.util.Map;

public interface PartnerReservationService {
	
	List<Map> hospitalReservationList(Map map);
	List<Map> hospitalreservationHistory(Map map);
	List<Map> hospitalReceiptList(Map map);
	List<Map> hospitalreceiptHistory(Map map);
	
	ReceptionDto hospitalReceiptView(Map map);
	ReservationDto hospitalReservationView(Map map);
	
	ReceptionDto hospitalReceiptHistoryView(Map map);
	ReservationDto hospitalReservationHistoryView(Map map);
	
	
}
