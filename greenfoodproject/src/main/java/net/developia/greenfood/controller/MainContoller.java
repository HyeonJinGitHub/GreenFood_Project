package net.developia.greenfood.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.CategoryFoodDTO;
import net.developia.greenfood.dto.FoodCategoryDTO;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.PagingVO;
import net.developia.greenfood.dto.RecipeDTO;
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
			//member
			List<MemberDTO> memberList = mainService.getMember();
			//recipe
			List<ArticleDTO> recipeList = mainService.getRecipe();
			List<ArticleDTO> recipeList2 = new ArrayList<ArticleDTO>();
			//product
//			List<ProductDTO> productList = mainService.getProduct();
			//category
			List<FoodCategoryDTO> categoryList = mainService.getCategory();
			
			System.out.println("memberList : " + memberList);
			System.out.println("recipeList : " + recipeList);
//			System.out.println("productList : " + productList);
			System.out.println("categoryList : " + categoryList);
			
			for(ArticleDTO i : recipeList) {
				String imgurl = i.getThumbnail().replace(" ", "");
				i.setThumbnail(imgurl);
				recipeList2.add(i);
			}
			
			
			mav.addObject("memberDTO", memberList);
			mav.addObject("recipeDTO", recipeList2);
//			mav.addObject("productDTO", productList);
			mav.addObject("categoryDTO", categoryList);
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
	@RequestMapping(value = "/reciep", method = RequestMethod.GET)
	public ModelAndView searchresult(
			@RequestParam(value = "nowPage",  required=false) String nowPage,
			@RequestParam(value = "cntPerPage",required=false) String cntPerPage,
			@ModelAttribute("RecipeSearchDTO") RecipeSearchDTO recipeSearchDTO,
			PagingVO vo
			) {

		System.out.println("searchRecipe Controller");
		log.info("***************************************************");
		log.info(" " + recipeSearchDTO);
		log.info(recipeSearchDTO.getKeyword());
		log.info("***************************************************");
		ModelAndView mav = new ModelAndView();
		try {
			
			int total = mainService.countRecipe(recipeSearchDTO.getKeyword());
			if(nowPage==null && cntPerPage==null) {
				nowPage ="1";
				cntPerPage = "8";
			}else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "8";
			}
			
			int IntNowPage = Integer.parseInt(nowPage);
			int IntCntPerPage = Integer.parseInt(cntPerPage);
			
			vo = new PagingVO(total, IntNowPage, IntCntPerPage);
			recipeSearchDTO.setPagingVO(vo);

			List<RecipeSearchDTO> list = mainService.getSearchRecipe(recipeSearchDTO);
			List<RecipeSearchDTO> list2 = new ArrayList<RecipeSearchDTO>();
			
			
			for(RecipeSearchDTO i : list) {
				String imgurl = i.getThumbnail().replace(" ", "");
				i.setThumbnail(imgurl);
				i.setPagingVO(vo);
				list2.add(i);
				
			}
			System.out.println(list2);
			
			//데이터가 없으면 0, 있으면 1;
			int dataFlag = 0;
			if(!list2.isEmpty()) {
				dataFlag = 1;
			}
			
			
			mav.addObject("RecipeSearchDTO", list2);
			mav.addObject("pagingVO", vo);
			mav.addObject("keyword", recipeSearchDTO.getKeyword());
			mav.addObject("dataFlag", dataFlag);
			mav.setViewName("searchrecipe");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
		
	}
	
	
	/*
	 * @ 작성자 : 이효범
	 * @ 작성일자 : 210710
	 * @ 메모 : foodCategory별 레시피 보여주는 메소드
	 */
	@RequestMapping(value="/recipe/foodCategory/{categoryNo}")
	public ModelAndView foodCategory(
			@PathVariable(required = false) int categoryNo,
			@RequestParam(value = "nowPage",  required=false) String nowPage,
			@RequestParam(value = "cntPerPage",required=false) String cntPerPage,
			PagingVO vo
			) {
		CategoryFoodDTO categoryFoodDTO = new CategoryFoodDTO();
		ModelAndView mav = new ModelAndView();
		System.out.println("categoryNo1 : " + categoryNo);

		try {
			int total = mainService.countCategoryFood(categoryFoodDTO);
			
			if(nowPage==null && cntPerPage==null) {
				nowPage ="1";
				cntPerPage = "8";
			}else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "8";
			}
			
			int IntNowPage = Integer.parseInt(nowPage);
			int IntCntPerPage = Integer.parseInt(cntPerPage);
			
			vo = new PagingVO(total, IntNowPage, IntCntPerPage);
			categoryFoodDTO.setPagingVO(vo);
			categoryFoodDTO.setNo(categoryNo);
			System.out.println("categoryNo2 : " + categoryFoodDTO.getNo());
			
			List<CategoryFoodDTO> categoryFoodList = mainService.getCategoryFood(categoryFoodDTO);
			List<CategoryFoodDTO> categoryFoodList2 = new ArrayList<CategoryFoodDTO>();
			String categoryTitle = mainService.getCategoryTitle(categoryNo);
			
			
			for(CategoryFoodDTO i : categoryFoodList) {
				String imgurl = i.getThumbnail().replace(" ", "");
				i.setThumbnail(imgurl);
				i.setPagingVO(vo);
				categoryFoodList2.add(i);
			}
			
			//데이터가 없으면 0, 있으면 1;
			int dataFlag = 0;
			if(!categoryFoodList2.isEmpty()) {
				dataFlag = 1;
			}
			
			
			System.out.println("categoryTitle : " + categoryTitle);
			System.out.println("categoryFoodList2 : " + categoryFoodList2);
			mav.addObject("categoryFoodDTO", categoryFoodList2);
			mav.addObject("categoryTitle",categoryTitle);
			mav.addObject("pagingVO", vo);
			mav.addObject("dataFlag", dataFlag);
			mav.setViewName("foodCategory");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mav;
	}
		
	/*
	 * @ 작성자 : 이효범
	 * @ 작성일자 : 2107012
	 * @ 고객센터
	 */
	@RequestMapping(value="/serviceCenter")
	public String serviceCenter() {
		return "serviceCenter";
	}
	
	/*
	 * @ 작성자 : 이효범
	 * @ 작성일자 : 2107013
	 * @ 모든카테고리 
	 */
	@RequestMapping(value = "/recipe/foodCategory/all", method = RequestMethod.GET)
	public ModelAndView foodCategoryAll(
			@RequestParam(value = "nowPage",  required=false) String nowPage,
			@RequestParam(value = "cntPerPage",required=false) String cntPerPage,
			PagingVO vo
			) {
		CategoryFoodDTO categoryFoodDTO = new CategoryFoodDTO();
		ModelAndView mav = new ModelAndView();
		
		try {
			int total = mainService.countCategoryFoodAll();
			
			if(nowPage==null && cntPerPage==null) {
				nowPage ="1";
				cntPerPage = "8";
			}else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "8";
			}
			
			int IntNowPage = Integer.parseInt(nowPage);
			int IntCntPerPage = Integer.parseInt(cntPerPage);
			
			vo = new PagingVO(total, IntNowPage, IntCntPerPage);
			categoryFoodDTO.setPagingVO(vo);
			
			List<CategoryFoodDTO> categoryFoodList = mainService.getCategoryFoodAll(categoryFoodDTO);
			List<CategoryFoodDTO> categoryFoodList2 = new ArrayList<CategoryFoodDTO>();
			
			
			for(CategoryFoodDTO i : categoryFoodList) {
				String imgurl = i.getThumbnail().replace(" ", "");
				i.setThumbnail(imgurl);
				i.setPagingVO(vo);
				categoryFoodList2.add(i);
			}
			
			//데이터가 없으면 0, 있으면 1;
			int dataFlag = 0;
			if(!categoryFoodList2.isEmpty()) {
				dataFlag = 1;
			}
			
			
			System.out.println("categoryFoodList2 : " + categoryFoodList2);
			mav.addObject("categoryFoodDTO", categoryFoodList2);
			mav.addObject("pagingVO", vo);
			mav.addObject("dataFlag", dataFlag);
			mav.setViewName("foodCategoryAll");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mav;
	}
	

}
