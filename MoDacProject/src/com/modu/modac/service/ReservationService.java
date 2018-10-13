package com.modu.modac.service;
            
import java.util.List;
import java.util.Map;

public interface ReservationService {
	/* dao와 impl에서 오버라이딩할 추상메소드 */
	void receiptInsert(Map map);
	void reservationInset(Map map);
	void reservationDelete(Map map);
	List<ReservationDto> reservationList(Map map);
	List<ReceptionDto> receiptList(Map map);
	int reservationCancel(Map map);
	int receptCancel(Map map);
	
}
