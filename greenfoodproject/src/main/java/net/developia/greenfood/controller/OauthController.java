package net.developia.greenfood.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;
import net.developia.greenfood.dto.SocialLoginType;
import net.developia.greenfood.service.OauthService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/auth")
public class OauthController {
	private final OauthService oauthService;
	
	@Autowired
	CheckController checkController;
	
	
	@GetMapping("/{socialLoginType}")
	@ResponseBody
	public void socialLoginType(@PathVariable(name = "socialLoginType") SocialLoginType loginType) {
		oauthService.request(loginType);
	}

	@GetMapping("/{socialLoginType}/callback")
	public ModelAndView CallbackSocialLogin(HttpSession session,  @PathVariable(name = "socialLoginType") SocialLoginType loginType, @RequestParam(name = "code") String code) throws ParseException {
		System.out.println("hello Oauth login call back!");
		String tokens = oauthService.requestAccessToken(loginType, code);
		
		JSONObject jobj = oauthService.getAuthInfo(loginType, tokens);
		switch(loginType) {
		case google:
			return checkController.GoogleLogin(session, jobj);
		case naver:
			return checkController.NaverLogin(session, jobj);
		}
		return null;

	}
	
	
	
}
