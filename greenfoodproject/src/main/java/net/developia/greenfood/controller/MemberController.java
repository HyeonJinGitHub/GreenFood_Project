package net.developia.greenfood.controller;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home() { 
//		System.out.println("home controller start"); 
//		return "index"; 
//	}
//	@RequestMapping(value = "/test", method = RequestMethod.GET)
//	public ModelAndView home2() {
//		System.out.println("test controller start");
//		ModelAndView mav = new ModelAndView("test");
//		mav.addObject("key", "value!!");
//		return mav;
//	}

	@GetMapping("/test")
	public ModelAndView home2() { 
		System.out.println("test controller start"); 
		return new ModelAndView("test"); 
	}
	
	@GetMapping("/member/list")
	public ModelAndView getMemberList() {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", "aaa");
		try {
			memberService.selectMember(map);
			List<MemberDTO> output = (List) map.get("MemberList");
			for (MemberDTO dto : output) {
				System.out.println(dto.getId());
				System.out.println(dto.getEmail());
			}
			ModelAndView mav = new ModelAndView("home");

			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("home");
			return mav;
		}
	}
}
