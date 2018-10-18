package com.modu.modac.web.general;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenmemberDto;
import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReservationDto;
import com.modu.modac.service.ReservationListDto;
import com.modu.modac.service.ReservationService;
import com.modu.modac.service.impl.PagingUtil;
import com.modu.modac.service.impl.PagingUtil2;
@SessionAttributes("genid")
@Controller
public class GenenralController {
	//진성 영역 시작
	@Resource(name="reservationService")
	private ReservationService reservationService;
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_SIZE}")
	private int blockPage;
	//접수,예약 내역으로 이동하는 컨트롤러
	@RequestMapping("/general/reservation/reservationlist.do")
	public String reservationList(
			@ModelAttribute("genid") String genid, 
			Map map, 
			Model model,@RequestParam(required=false,defaultValue="1") int nowPage,
			Model model1,@RequestParam(required=false,defaultValue="1") int nowPage2,
			HttpServletRequest req
			) throws Exception {
		System.out.println("이동하는 컨트롤러로 들어옴");
		map.put("genid", genid);

		//페이징을 위한 로직 시작]
		//예약 전체 레코드 수
		int totalRecordCount= reservationService.getTotalReservationRecord(map);
		int totalRecordCountrec = reservationService.getTotalReservationRecordrec(map);
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage2-1)*pageSize+1;
		int end   = nowPage2*pageSize;
		map.put("start",start);
		map.put("end",end);
		//페이징을 위한 로직 끝]	
		String reservationPagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/general/reservation/reservationlist.do?");
		String receptionPagingString = PagingUtil2.pagingBootStrapStyle(totalRecordCountrec, pageSize, blockPage, nowPage2, req.getContextPath()+"/general/reservation/reservationlist.do?");
		model1.addAttribute("reservationPagingString", reservationPagingString);
		model1.addAttribute("receptionPagingString", receptionPagingString);
		//접수내역 얻어오기
		List<ReceptionDto> receiptList = reservationService.receiptList(map);
		start = (nowPage-1)*pageSize+1;
		end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		//예약내역 얻어오기
		List<ReservationDto> reservationList = reservationService.reservationList(map);
		
		model1.addAttribute("receiptList", receiptList);
		model1.addAttribute("reservationList", reservationList);
		System.out.println("이동하기 전 마지막");
		return "general/reservation/Reservation_List.tiles";
	}

	//접수 버튼을 누르면 실행되는 것
	@RequestMapping("/general/receipt/ReceiptListResult.do")
	public String ReceiptListResult(@RequestParam Map map,@ModelAttribute("genid") String genid,HttpServletResponse resp)throws Exception{
		resp.setContentType("text/html; charset=UTF-8");
		map.put("recdate", new SimpleDateFormat("yyyy-MM-dd kk:mm").format(new Date()));
		if(map.get("recname").toString().trim().length()==0) {//이름을 입력을 하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('이름을 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else if(map.get("phone").toString().trim().length()==0) {//번호를 입력하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('번호를 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();			
		}
		else if(map.get("email").toString().trim().length()==0) {//에메일을 입력하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('이메일을 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else if(map.get("reccontens").toString().trim().length()==0) {//내용을 입력하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('내용을 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else if(map.get("checkbox_name")==null) {
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('개인정보 동의를 선택하지 않았습니다:(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else {
		//데이터베이스에 집어 넣기
		System.out.println("else로 들어옴");
		reservationService.receiptInsert(map);
		return "forward:/general/reservation/reservationlist.do";
		}
		return "forward:/general/reservation/reservationlist.do";
	}
	
	
	//예약 버튼을 부르면 실행되는 것
	@RequestMapping("/general/receipt/ReservationListResult.do")
	public String ReservationListResult(@RequestParam Map map,@ModelAttribute("genid") String genid,HttpServletResponse resp)throws Exception{
		resp.setContentType("text/html; charset=UTF-8");
		if(map.get("resdate").toString().trim().length()==0) {//시간이 선택되지 않았을시 현재 시간 반영
			map.put("resdate", new SimpleDateFormat("yyyy-MM-dd kk:mm").format(new Date()));
		}//if
		else if(map.get("resname").toString().trim().length()==0) {//이름을 입력을 하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('이름을 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else if(map.get("phone").toString().trim().length()==0) {//번호를 입력하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('번호를 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();			
		}
		else if(map.get("email").toString().trim().length()==0) {//에메일을 입력하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('이메일을 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else if(map.get("rescontents").toString().trim().length()==0) {//내용을 입력하지 않았을떄
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('내용을 입력하지 않았습니다 :(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else if(map.get("checkbox_name")==null) {
			PrintWriter out =resp.getWriter();
			out.println("<script>");
			out.println("alert('개인정보 동의를 선택하지 않았습니다:(');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
		}
		else {
		//데이터베이스에 집어 넣기
		System.out.println("else로 들어옴");
		reservationService.reservationInset(map);
		return "forward:/general/reservation/reservationlist.do";
		}
		return "forward:/general/reservation/reservationlist.do";
	}
	
	//예약 취소 클릭시
	@RequestMapping("/general/receipt/ReservationCancel.do")
	public String ReservationCancel(@RequestParam Map map,@ModelAttribute("genid") String genid)throws Exception{
		reservationService.reservationCancel(map);
		return "redirect:/general/reservation/reservationlist.do";
	}
	
	//접수 취소 클릭시
	@RequestMapping("/general/receipt/ReceiptCancel.do")
	public String ReceptCancel(@RequestParam Map map,@ModelAttribute("genid") String genid)throws Exception{
		reservationService.receptCancel(map);
		return "redirect:/general/reservation/reservationlist.do";
	}	
	//진성 영역 끝
	
	
}