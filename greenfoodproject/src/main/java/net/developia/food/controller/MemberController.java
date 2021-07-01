package net.developia.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.developia.food.dto.MemberDTO;
import net.developia.food.service.MemberServiceImpl;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl memberServiceImpl;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() { 
		System.out.println("home controller start"); 
		return "index"; 
	}
	
	@GetMapping("/member/list")
	public @ResponseBody List<MemberDTO> getMemberList() {
		try {
			return memberServiceImpl.getMemberList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
