package net.developia.greenfood.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;
import net.developia.greenfood.service.MainService;

@Controller
@Slf4j
public class MainContoller {
	@Autowired
	private MainService mainService;
	
	/*
	 * @ 작성자 : 이효범
	 * @ 작성일자 : 210705
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView Main() {
		System.out.println("Main Controller");

		ModelAndView mav = new ModelAndView();
		try {
			List<MemberDTO> list = mainService.getMember();
			System.out.println(list);
			mav.addObject("memberDTO", list);
			mav.setViewName("main");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
		
	}

	/*
	 * @ 작성자 : 이효범
	 * @ 작성일자 : 210706
	 * @ 메모 : 검색결과페이지보여주는 메소드
	 */
	@RequestMapping(value = "/searchresult", method = RequestMethod.GET)
	public ModelAndView searchresult(@RequestParam("keyword") String keyword) {

		System.out.println("searchRecipe Controller");
		log.info("***************************************************");
		log.info(keyword);
		log.info("***************************************************");
		ModelAndView mav = new ModelAndView();
		try {
			List<RecipeSearchDTO> list = mainService.getRecipe(keyword);
			System.out.println(list);
			mav.addObject("RecipeSearchDTO", list);
			mav.addObject("keyword", keyword);
			mav.setViewName("searchrecipe");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
		
	}
	
	@RequestMapping(value="/searchresult")
	public String searchresult() {
		return "searchrecipe";
	}
		
	/*
	 * @ 작성자 : 이효범
	 * @ 작성일자 : 210706
	 */
//	@RequestMapping(value = "/searchresult", method = RequestMethod.GET)
//	public ModelAndView searchresult() {
//		System.out.println("searchRecipe Controller");
//
//		ModelAndView mav = new ModelAndView();
//		try {
////			List<MemberDTO> list = mainService.getMember();
////			System.out.println(list);
////			mav.addObject("memberDTO", list);
//			mav.setViewName("searchrecipe");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		return mav;
//	}

}
