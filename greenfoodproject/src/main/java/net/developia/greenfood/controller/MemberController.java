package net.developia.greenfood.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.service.AwsService;
import net.developia.greenfood.service.MemberService;

@Controller
@RequestMapping("/")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AwsService awsService;

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
		return "login";
	}

	@PostMapping("/registerAction")
	public ModelAndView registerAction(@RequestParam(required = true) String uid,
			@RequestParam(required = true) String pwd, @RequestParam(required = true) String name,
			@RequestParam(required = true) String uemail, @RequestParam(required = true) String phone) {
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
		return new ModelAndView("main");
	}
	
	@GetMapping("/myinfo")
	public ModelAndView move_myinfo(HttpSession session) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", session.getAttribute("id"));
		ModelAndView mav = new ModelAndView("myinfo");
		try {
			memberService.selectProfile(map);
			Object output = map.get("MemberNickname");
			if(output == null) {
				mav.addObject("nickname", "");
			} else {
				mav.addObject("nickname", map.get("MemberNickname").toString());
			}
			
			mav.addObject("profile_img", map.get("MemberProfileImg").toString());
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("nickname", "");
			mav.addObject("profile_img", map.get("MemberProfileImg").toString());
		}
		return mav;
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
			memberService.selectProfile(map);
			Object output = map.get("MemberNickname");
			if (output == null) {
				mav.addObject("nickname", "");
				mav.addObject("profile_img", map.get("MemberProfileImg").toString());
			} else {
				mav.addObject("nickname", map.get("MemberNickname").toString());
				mav.addObject("profile_img", map.get("MemberProfileImg").toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@PostMapping("/profileUpdateAction")
	public ModelAndView profileUpdateAction_post(HttpSession session, @RequestParam(required = false) String nickname, @ModelAttribute MultipartFile images, @RequestParam(required = false) String flag) {
		String profile_img;
		ModelAndView mav = new ModelAndView("result");
		HashMap<String, Object> map = new HashMap<String, Object>();
		logger.info(images+" 이미지 내용");
		try {
			map.put("ID", session.getAttribute("id"));
			if(flag.equals("0")) {
				memberService.selectProfile(map);
				profile_img =  map.get("MemberProfileImg").toString();
				mav.addObject("url", "/greenfood/myinfo");
				mav.addObject("nickname", nickname);
				mav.addObject("profile_img", profile_img);
				map.put("NICKNAME", nickname);
				map.put("PROFILE_IMG", profile_img);
				memberService.updateProfile(map);
				return mav;
			} else if(flag.equals("1")) {
				profile_img = awsService.s3FileUpload(images, session.getAttribute("id").toString());
			} else {
				profile_img = "https://greenfood-bucket.s3.us-east-2.amazonaws.com/default_profile.png";
			}
			map.put("NICKNAME", nickname);
			map.put("PROFILE_IMG", profile_img);
			memberService.updateProfile(map);
			mav.addObject("url", "/greenfood/myinfo");
			mav.addObject("nickname", nickname);
			mav.addObject("profile_img", profile_img);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
		
	}
	
	@PostMapping("/contact")
	public ModelAndView move_contact_get() {
		return new ModelAndView("contact");
	}
}
