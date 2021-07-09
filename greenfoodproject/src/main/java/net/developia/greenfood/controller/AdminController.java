package net.developia.greenfood.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.service.AwsService;
import net.developia.greenfood.service.RecipeService;

@Controller
@Slf4j
public class AdminController {

	@Autowired
	private RecipeService recipeService;
	
	@Autowired
	private AwsService awsService;
	
	@ResponseBody
	@RequestMapping(value = "/adminPage", method = RequestMethod.GET)
	public ModelAndView recipe(HttpSession session) {
		System.out.println("admin page start");
		ModelAndView mav = new ModelAndView("adminPage");
		return mav;
	}

	

}
