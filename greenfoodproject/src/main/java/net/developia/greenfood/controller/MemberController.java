package net.developia.greenfood.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.developia.greenfood.service.MemberService;

@Controller
@RequestMapping("/")
public class MemberController {

	@Autowired
	private MemberService memberService;

	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@GetMapping("/test")
	public ModelAndView home2() {
		System.out.println("test controller start");
		return new ModelAndView("test");
	}

	@GetMapping("/registerAction")
	public String tmp(@RequestParam(required = true) String uid, @RequestParam(required = true) String pwd,
			@RequestParam(required = true) String name, @RequestParam(required = true) String uemail,
			@RequestParam(required = true) String phone) {
		System.out.println("Get으로 왔어요");
		return "login";
	}

	@PostMapping("/registerAction")
	public ModelAndView registerAction(@RequestParam(required = true) String uid,
			@RequestParam(required = true) String pwd, @RequestParam(required = true) String name,
			@RequestParam(required = true) String uemail, @RequestParam(required = true) String phone) {
		System.out.println("POST로 왔어요");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", uid);
		map.put("PWD", DigestUtils.sha512Hex(pwd));
		map.put("NAME", name);
		map.put("EMAIL", uemail);
		map.put("PHONE", phone);
		ModelAndView mav = new ModelAndView("result");
		try {
			memberService.register(map);
			mav.addObject("url", "/greenfood/login");
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("url", "javascript:history.back();");
			return mav;
		}
	}

	@GetMapping("/login")
	public ModelAndView move_login_get() {
		return new ModelAndView("login");
	}

	@PostMapping("/login")
	public ModelAndView move_login_post() {
		return new ModelAndView("login");
	}

	@GetMapping("/register")
	public ModelAndView move_register() {
		return new ModelAndView("register");
	}
	
	@PostMapping("/")
	public ModelAndView move_home_post() {
		return new ModelAndView("home");
	}
	
	@GetMapping("/myinfo")
	public ModelAndView move_myinfo() {
		return new ModelAndView("myinfo");
	}
	
	@PostMapping("/profile")
	public ModelAndView move_profile_post() {
		return new ModelAndView("profile");
	}
	@GetMapping("/profile")
	public ModelAndView move_profile_get(HttpSession session) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", session.getAttribute("id"));
		ModelAndView mav = new ModelAndView("profile");
		try {
			// memberService.getNickname 구현해야함
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("nickname", "");
		}
		return mav;
	}
}
