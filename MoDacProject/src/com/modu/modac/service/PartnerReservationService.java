package com.modu.modac.service;

import java.util.List;
import java.util.Map;

public interface PartnerReservationService {
	
	List<ReservationListDto> hospitalReservationList(Map map);
	List<ReservationHistoryListDto> hospitalreservationHistory(Map map);
	List<ReceptionListDto> hospitalReceiptList(Map map);
	List<ReceptionHistoryListDto> hospitalreceiptHistory(Map map);
	
	ReceptionDto hospitalReceiptView(Map map);
	ReservationDto hospitalReservationView(Map map);
	ReceptionDto hospitalReceiptHistoryView(Map map);
	ReservationDto hospitalReservationHistoryView(Map map);
	Map ajaxReceptionResult(Map map);
	Map ajaxReservationResult(Map map);
	
	int getTotalReservationRecord(Map map);
	int getTotalReservationHistoryRecord(Map map);
	int getTotalReceptionRecord(Map map);
	int getTotalReceptionHistoryRecord(Map map);
	void receptListYes(Map map);
	void reservationListYes(Map map);
	void receptListNo(Map map);
	void reservationListNo(Map map);
	
}
