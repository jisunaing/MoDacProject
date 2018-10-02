package controller.modactest;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.modu.modac.service.TestDto;
import com.modu.modac.service.TestService;

@Controller
public class TestController {

	@Resource(name="testService")
	private TestService testService;
	
	@RequestMapping("/Test/Test.do")
	public String test(Model model) throws Exception {
		int test = testService.testdb();
		model.addAttribute("testvar", test);
		
		return "/index"; // WEB-INF아래 위치한 index.jsp
	} // test
} // classr
