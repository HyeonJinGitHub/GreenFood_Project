package net.developia.greenfood.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dto.MemberDTO;
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
	 */
	@RequestMapping(value = "/recipe", method = RequestMethod.GET)
	public ModelAndView searchRecipe() {
		System.out.println("searchRecipe Controller");
		ModelAndView mav = new ModelAndView();
		try {
//			List<MemberDTO> list = mainService.getMember();
//			System.out.println(list);
//			mav.addObject("memberDTO", list);
			mav.setViewName("searchrecipe");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
		
	}

}
