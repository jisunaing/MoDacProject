package com.modu.modac.web.general;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GenenralController {
	@RequestMapping("/general/pharm/pharmMap.do")
	public String pharmMapPage() throws Exception {
		return "general/pharm/MapPharmacy.tiles";
	}
	@RequestMapping("/general/hospital/hosMap.do")
	public String hosMapPage() throws Exception {
		return "general/hospital/MapHospital.tiles";
	}
	@RequestMapping("/general/hospital/hosMapSub.do")
	public String subHosMapPage() throws Exception {
		return "general/hospital/SelectSubject.tiles";
	}
	@RequestMapping("/general/reservation/reception.do")
	public String reception() throws Exception {
		return "general/reservation/Receipt.tiles";
	}
	@RequestMapping("/general/reservation/reservation.do")
	public String reservation() throws Exception {
		return "general/reservation/Reservation.tiles";
	}
	@RequestMapping("/general/reservation/reservationlist.do")
	public String reservationList() throws Exception {
		return "general/reservation/Reservation_List.tiles";
	}
	
	
	
	//지훈-자가진단 
	@RequestMapping("/general/reservation/selfdiagnosis.do")
	public String selfdiagnosis()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Main.tiles";
	}///메인
	
	@RequestMapping("/general/reservation/selfdiagnosis_eye.do")
	public String selfdiagnosis_eye()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Eyes.tiles";
	}//눈
	
	@RequestMapping("/general/reservation/selfdiagnosis_mouth.do")
	public String selfdiagnosis_mouth()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Mouth.tiles";
	}//입
	
	@RequestMapping("/general/reservation/selfdiagnosis_neck.do")
	public String selfdiagnosis_neck()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Neck.tiles";
	}//목
	
	@RequestMapping("/general/reservation/selfdiagnosis_nose.do")
	public String selfdiagnosis_nose()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Nose.tiles";
	}//코
	
	@RequestMapping("/general/reservation/selfdiagnosis_brain.do")
	public String selfdiagnosis_brain()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Brain.tiles";
	}//머리
	
	@RequestMapping("/general/reservation/selfdiagnosis_ear.do")
	public String selfdiagnosis_ear()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Ear.tiles";
	}//귀

	
	
	
	
	
	
	
	
	
	
	
}