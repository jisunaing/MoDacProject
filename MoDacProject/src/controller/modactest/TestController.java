package controller.modactest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("/Test/Test.do")
	public String test(Model model) throws Exception {
		model.addAttribute("testvar", "test");
		return "/index.jsp"; // WEB-INF아래 위치한 index.jsp
	} // test
} // class
