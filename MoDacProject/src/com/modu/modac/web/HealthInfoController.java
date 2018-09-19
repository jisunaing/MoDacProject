package com.modu.modac.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthInfoController {
	
	// [건강정보 관련]
	@RequestMapping("/general/HealthInfoList.do")
	public String heathInfo() throws Exception {
		return "general/HealthInfoList.tiles";
	}
	@RequestMapping("/general/HealthInfoView.do")
	public String heathView(Model model, HttpServletRequest req) throws Exception {
		
		String content = "자녀 손을 잡고 안과를 처음 찾은 때가 언제였는가?\r\n "
				+ "자녀가 칠판 글씨가 잘 보이지 않는다고 호소해야 겨우 안과를 찾았는가?\r\n "
				+ "그런 경우에도 안과에는 들르지 않고 안경점으로 가 안경 맞춰주기에 급급했는가?\r\n "
				+ "자녀가 초등학교에 들어간 뒤에야 안과를 찾는다면 70점, 자녀에게 첫 안경을 맞춰줄 때조차 안과를 거치지 않고 안경점으로 직행하는 부모라면 50점도 채 못 받을 것이다."
				+ " 자녀의 눈 건강 관리 항목에서는 말이다. \r\n" + 
				"\r\n" + 
				"아이들의 눈 건강이 점점 나빠지고 있다. "
				+ "대한안과학회에서 서울․충북 지역 어린이 2천9백72명(만3~6세)의 눈 질환을 정밀 검사한 결과, 굴절 이상이 75.3%로 가장 많았다."
				+ " 약시 18.3%, 사시 7.4%, 백내장과 같은 전안부 이상이 11.9%, 기타 안저 이상 질환이 0.3%였다."
				+ " 또 1970년대부터 2005년 상반기까지 조사한 초등학생 근시 유병률 현황만 보아도 아이들의 눈 건강은 심각한 수준이다."
				+ " 1970년대에 근시 유병률이 8~15%였던 것이 2005년대 상반기에는 46.2%로 조사되었다."
				+ " 지난 30여 년간 세 배 가량 증가한 것이다(표 참조). \r\n" + 
				"\r\n" + 
				"과거에 비해 진단과 교정 횟수가 늘어남에 따라 근시 유병률이 높아진 측면도 있지만, "
				+ "눈을 위협하는 환경이 조성 아이들의 눈 건강이 더 나빠졌다는 것이 전문가들의 분석이다. "
				+ "백혜정 교수(가천의대·소아안과)는 “취학 전부터 학습량이 증가하고 컴퓨터 게임처럼 가까운 거리에서 눈을 써야 할 일이 늘어나면서 아이들의 시력이 눈에 띄게 나빠졌다”라고 분석했다. "
				+ "과거에는 ‘시력은 유전에 의해 결정된다’는 것이 정설이었지만, 환경이 달라지면서 시력에 미치는 환경의 영향력이 더 커지고 있는 것이다. \r\n" + 
				"“늦어도 만5세 이전에 1차 안과 검진 받아야”\r\n" + 
				"\r\n" + 
				"어린이는 만5세 전후가 되면 시세포들이 다 자라 성인과 비슷한 수준에 이른다. 따라서 아무런 이상이 없어도 만3세, 늦어도 만5세 이전에는 1차 안과 검진을 받아야 한다. 어린이 눈 질환을 얼마나 빨리 진단하고 치료하느냐에 따라 평생 눈 건강이 좌우되기 때문이다. "
				+ "특히 생후 6개월 이후에도 눈의 초점이 정상적이지 못하다면 안과 전문의에게 조언을 구해야 한다. "
				+ "눈동자 색깔이 이상하거나 한 쪽 눈은 이쪽을 보고 있는데 또 다른 눈은 다른 쪽을 보고 있을 때, 고개를 기울이거나 얼굴을 옆으로 돌려서 볼 때, 빛을 잘 보지 못하고 눈부셔할 때도 안과 검진을 받는 것이 좋다. \r\n" + 
				"\r\n" + 
				"안경 교정으로 시력이 교정되지 않는 약시 또한 일찍 진단할수록 유리하다. "
				+ "그러나 약시 환자 둘 중 한 명은 만5세가 될 때까지 진단받지 못했다는 보고가 있다. "
				+ "어릴 때 발견할수록 효과적인 치료가 가능한데, 시기를 놓쳐 영구적인 시력 장애로 이어지는 경우가 적지 않다는 것이다. "
				+ "장혜란 교수(성균관의대·소아안과)는 “어린이는 자신의 증상을 잘 표현하지 못한다."
				+ " 따라서 증상을 호소하지 않더라도 일찍부터 안과 검진을 시작하는 것이 어린이 눈 건강을 위한 필수 요건이다”라고 강조했다. ";
		
		content = content.replace("\r\n", "<br/>");
		model.addAttribute("content",content);
		return "general/HealthInfoView.tiles";
	}
	
	@RequestMapping("/general/HealthInfo.do")
	public String heathView() throws Exception {
		return "general/HealthInfoList.tiles";
	}
	

}
