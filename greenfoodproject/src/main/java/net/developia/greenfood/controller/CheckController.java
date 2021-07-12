package net.developia.greenfood.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.service.MemberService;
import net.developia.greenfood.util.IdFormatterUtil;

@Controller
@RequestMapping("/check")
public class CheckController {
	@Autowired
	private MemberService memberService;

	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@PostMapping("/idcheck")
	@ResponseBody
	public int idcheck(@RequestParam(required = true) String id) {
		if (id.equals("")) {
			return 2;
		}
		try {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("ID", id);
			memberService.selectMember(map);
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
			return 1;
		}
	}

	@PostMapping("/emailcheck")
	@ResponseBody
	public int emailcheck(@RequestParam(required = true) String email) {
		if (email.equals("")) {
			return 2;
		}
		try {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("EMAIL", email);
			memberService.selectMemberByEmail(map);
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
			return 1;
		}
	}

	@PostMapping("/phonecheck")
	@ResponseBody
	public int phonecheck(@RequestParam(required = true) String phone) {
		if (phone.equals("")) {
			return 2;
		}
		try {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("PHONE", phone);
			memberService.selectMemberByPhone(map);
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
			return 1;
		}
	}

	@PostMapping("/sendSMS.do")
	@ResponseBody
	@Transactional
	public String sendSms(@RequestParam(required = true) String phone) throws Exception {
//
//      String api_key = "NCSNMVSIIENHF4CW";
//      String api_secret = "8LJLY5E24LEPFMQZOX1KOHAUKKNKAGNN";
//
//      Coolsms coolsms = new Coolsms(api_key, api_secret);
//      Random rand  = new Random();
//      String numStr = "";
//      for(int i=0; i<4; i++) {
//          String ran = Integer.toString(rand.nextInt(10));
//          numStr+=ran;
//      }
//
//      HashMap<String, String> set = new HashMap<String, String>();
//      set.put("to", phone); // 수신번호
//
//      set.put("from", "010-2623-5755"); // 발신번호, jsp에서 전송한 발신번호를 받아 map에 저장한다.
//      //set.put("text", (String)request.getParameter("text")); // 문자내용, jsp에서 전송한 문자내용을 받아 map에 저장한다.
//      set.put("text", "[찍먹부먹] 인증번호" + "["+numStr+"]" + "를 입력해주세요.");
//      set.put("type", "sms"); // 문자 타입
//
//      System.out.println(set);
//      JSONObject result = coolsms.send(set); // 보내기&전송결과받기

//      if ((boolean)result.get("status") == true) {
//
//        // 메시지 보내기 성공 및 전송결과 출력
//        System.out.println("성공");
//		/*
//		 * System.out.println(result.get("group_id")); // 그룹아이디
//		 * System.out.println(result.get("result_code")); // 결과코드
//		 * System.out.println(result.get("result_message")); // 결과 메시지
//		 * System.out.println(result.get("success_count")); // 메시지아이디
//		 * System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
//		 */ 
//        return true;
//        } else {
//
//        // 메시지 보내기 실패
//        System.out.println("실패");
//        System.out.println(result.get("code")); // REST API 에러코드
//        System.out.println(result.get("message")); // 에러메시지
//        return false;
//      }
		return "1234";
	}

	@PostMapping("/logincheck")
	@ResponseBody
	public boolean logincheck(HttpSession session, @RequestParam(required = true) String id,
			@RequestParam(required = true) String pwd) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", id);
		map.put("PASSWORD", DigestUtils.sha512Hex(pwd));
		try {
			memberService.login(map);
			List<MemberDTO> output = (List) map.get("MemberList");
			MemberDTO memberDTO = output.get(0);
			IdFormatterUtil masking = new IdFormatterUtil();

			session.setAttribute("id", memberDTO.getId());
			session.setAttribute("name", masking.maskingName(memberDTO.getName()));
			session.setAttribute("email", masking.maskingEmail(memberDTO.getEmail()));
			session.setAttribute("phone", masking.maskingPhone(memberDTO.getPhone()));
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public ModelAndView GoogleLogin(HttpSession session,  JSONObject jobj) {
		ModelAndView mav = new ModelAndView("result");
		mav.addObject("jobj", jobj);
		mav.addObject("url", "/greenfood/");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", jobj.get("id"));
		map.put("NAME", jobj.get("name"));
		map.put("EMAIL", jobj.get("email"));
		map.put("NICKNAME", jobj.get("given_name"));
		map.put("IMAGE", jobj.get("picture").toString().replace("\\", ""));
		try {
			memberService.loginByGoogle(map);
			List<MemberDTO> output = (List) map.get("MemberList");
			MemberDTO dto = output.get(0);
			IdFormatterUtil masking = new IdFormatterUtil();
			session.setAttribute("id", dto.getId());
			session.setAttribute("name", masking.maskingName(dto.getName()));
			session.setAttribute("email", masking.maskingEmail(dto.getEmail()));
			session.setAttribute("phone", "알 수 없음");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("CheckController##=>" + jobj.toString());
		return mav;
	}

}
