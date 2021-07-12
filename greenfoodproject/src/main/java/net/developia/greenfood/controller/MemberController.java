package net.developia.greenfood.controller;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.maven.shared.invoker.SystemOutHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

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

	@RequestMapping(value="/selectMember", method=RequestMethod.POST, produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String selectMember(HttpSession session) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println("ID는 " + session.getAttribute("id"));
		map.put("ID", session.getAttribute("id"));
		try {
			memberService.selectMemberById(map);
			List<MemberDTO> data = (List) map.get("MemberList");
			MemberDTO dto = data.get(0);
			System.out.println(dto.toString());
			String json = new Gson().toJson(dto);
			System.out.println("json은 : " + json);
			return json;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
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
			if (output == null) {
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
	public ModelAndView profileUpdateAction_post(HttpSession session, @RequestParam(required = false) String nickname,
			@ModelAttribute MultipartFile images, @RequestParam(required = false) String flag) {
		String profile_img;
		ModelAndView mav = new ModelAndView("result");
		HashMap<String, Object> map = new HashMap<String, Object>();
		logger.info(images+" �̹��� ����");
		try {
			map.put("ID", session.getAttribute("id"));
			if (flag.equals("0")) {
				memberService.selectProfile(map);
				profile_img = map.get("MemberProfileImg").toString();
				mav.addObject("url", "/greenfood/myinfo");
				mav.addObject("nickname", nickname);
				mav.addObject("profile_img", profile_img);
				map.put("NICKNAME", nickname);
				map.put("PROFILE_IMG", profile_img);
				memberService.updateProfile(map);
				return mav;
			} else if (flag.equals("1")) {
				profile_img = awsService.s3FileUpload(images, session.getAttribute("id").toString());
			} else {
				profile_img = "https://d3gr4nmrit7xq0.cloudfront.net/default_profile.png";
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

	@GetMapping("/logout")
	public ModelAndView lougout(HttpSession session) {
		ModelAndView mav = new ModelAndView("result");
		session.invalidate();
		mav.addObject("url", "/greenfood");
		return mav;
	}
	
	@PostMapping("/contact")
	public ModelAndView move_contact_get() {
		return new ModelAndView("contact");
	}
	
	@GetMapping("/test2")
	public ModelAndView move_test() {
		return new ModelAndView("test2");
	}

	@GetMapping("/test3")
	public ModelAndView move_test3() {
		return new ModelAndView("test3");
	}
	
	@PostMapping("/uploadtest")
	public ModelAndView upload_test(HttpSession session, @ModelAttribute MultipartFile videos) throws IOException {
		System.out.println("비디오 테스트 들어왔어요.");
		String SAVE_PATH = "D:/greenfood/resources/" + session.getAttribute("id");
		File folder = new File(SAVE_PATH);
		if (!folder.exists()) {
			try {
				File folder1 = new File(SAVE_PATH + "/recipe");
				folder1.mkdirs();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		String video1 = videos.getOriginalFilename();
		String path1 = "D:/greenfood/resources/" + session.getAttribute("id") + "/recipe";
		if (!videos.getOriginalFilename().isEmpty()) {
			videos.transferTo(new File(path1, video1));
		}
		String cmd = "C:\\Users\\HyeonJin\\Downloads\\ffmpeg-4.4-full_build\\bin\\ffmpeg.exe -i D:\\greenfood\\resources\\null\\recipe\\ohgu2.mp4 -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls ohgu2.m3u8";
		try {
			memberService.shellCmd(cmd);
			System.out.println("shellcmd 명령어 끝");
		} catch (Exception e) {
			e.printStackTrace();
		}
//		for(int i=0;i<10;i++) {
//			try {
//				Thread.sleep(1000);
//				System.out.println(i + " 경과");
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
		String dirPath = "C:\\Users\\HyeonJin\\Downloads\\sts-4.10.0.RELEASE\\";
		File dir = new File(dirPath);
		File[] files = dir.listFiles(new FileFilter() {
			@Override
			public boolean accept(File file) {
				if (file.isFile() && file.getName().toUpperCase().startsWith("OHGU2")) {
					System.out.println("여기요~");
					return true;
				} else {
					System.out.println("뭐여 대체");
					return false;
				}
			}
		});
		for (File f : files) {
			try {
				System.out.println(awsService.s3VideoUpload(f, "recipe"));
			} catch (Exception e) {
				e.printStackTrace();
			}
//			FileItem fileItem = new DiskFileItem("mainFile", Files.probeContentType(f.toPath()), false, f.getName(),
//					(int) f.length(), f.getParentFile());
//			try {
//				InputStream input = new FileInputStream(f);
//				OutputStream os = fileItem.getOutputStream();
//				IOUtils.copy(input, os); // Or faster.. // IOUtils.copy(new FileInputStream(file),
//											// fileItem.getOutputStream());
//			} catch (IOException ex) {
//				// do something.
//			}
//			MultipartFile multipartFile = new CommonsMultipartFile(fileItem);
		
		}
		// System.out.println(s3VideoUpload());
		ModelAndView mav = new ModelAndView("result");
		mav.addObject("url", "/greenfood/test2");

		return mav;
	}
}
