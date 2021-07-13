package net.developia.greenfood.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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

import com.amazonaws.services.appstream.model.Session;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.CategoryFoodDTO;
import net.developia.greenfood.dto.FoodCategoryDTO;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.PagingVO;
import net.developia.greenfood.dto.ProductDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;
import net.developia.greenfood.dto.ShoppingCartDTO;
import net.developia.greenfood.service.MainService;

@Controller
@Slf4j
public class MainContoller {
	
	@Autowired
	private MainService mainService;
	
	/*
	 * @ 占쎌삂占쎄쉐占쎌쁽 : 占쎌뵠占쎌뒞甕곤옙
	 * @ 占쎌삂占쎄쉐占쎌뵬占쎌쁽 : 210705
	 * @ 筌롫뗀�걟 : 筌롫뗄�뵥占쎈퓠 �굢�슢�젻雅뚯눖�뮉 占쎈쑓占쎌뵠占쎄숲
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView Main(
			HttpSession session
			) {
		System.out.println("Main Controller");

		ModelAndView mav = new ModelAndView();
		
		try {
			//member
			List<MemberDTO> memberList = mainService.getMember();
			//recipe
			List<ArticleDTO> recipeList = mainService.getRecipe();
			List<ArticleDTO> recipeList2 = new ArrayList<ArticleDTO>();
			//product
			List<ProductDTO> productList = mainService.getProduct();
			List<ProductDTO> productList1 = new ArrayList<ProductDTO>();
			List<ProductDTO> productList2 = new ArrayList<ProductDTO>();
			List<ProductDTO> productList3 = new ArrayList<ProductDTO>();
			List<ProductDTO> productList4 = new ArrayList<ProductDTO>();
			List<ProductDTO> productList5 = new ArrayList<ProductDTO>();
			
			//category
			List<FoodCategoryDTO> categoryList = mainService.getCategory();
			
			//cart
			if(session.getAttribute("id") != null) {
				System.out.println("占쎈닪占쎈릅燁삳똾�뱜筌욊쑴�뿯");
				String id = (String) session.getAttribute("id");
				List<ShoppingCartDTO> shoppingCartList = mainService.getShoppingCart(id);
				List<ShoppingCartDTO> shoppingCartList2 = new ArrayList<ShoppingCartDTO>();
				System.out.println("shoppingCartList : " + shoppingCartList);
				for(ShoppingCartDTO i : shoppingCartList) {
					String imgurl = i.getImage().replace(" ", "");
					i.setImage(imgurl);
					shoppingCartList2.add(i);
				}
				mav.addObject("shoppingCartDTO", shoppingCartList2);
			}
			
			
			
			System.out.println("memberList : " + memberList);
			System.out.println("recipeList : " + recipeList);
			System.out.println("productList : " + productList);
			System.out.println("categoryList : " + categoryList);
			
			for(ArticleDTO i : recipeList) {
				String imgurl = i.getThumbnail().replace(" ", "");
				i.setThumbnail(imgurl);
				String step_img = i.getStep_img().replace(" ", "");
				i.setStep_img(step_img);
				recipeList2.add(i);
			}
			
			//eunna main부분 수정
			ProductDTO pdto = new ProductDTO();
			pdto.setMain_img("https://d3gr4nmrit7xq0.cloudfront.net/product/22/1/main1.jpg");
			pdto.setName("[7월] 복날 삼계탕");
			pdto.setDescription("지치기 쉬운 여름 원기회복을 위한 삼계탕이 상품화되었습니다!");
			pdto.setNo(22);
			pdto.setPrice(9900);
			
			ProductDTO pdto1 = new ProductDTO();
			pdto1.setMain_img("https://d3gr4nmrit7xq0.cloudfront.net/product/23/1/main3.jpg");
			pdto1.setName("[I like Eat] 베이컨 시저 샐러드");
			pdto1.setDescription("짭조름한 감칠맛을 더해줄 베이컨칩과 바삭한 크루통이 어우러진 담백한 샐러드!");
			pdto1.setNo(23);
			pdto1.setPrice(4900);
			
			ProductDTO pdto2 = new ProductDTO();
			pdto2.setMain_img("https://d3gr4nmrit7xq0.cloudfront.net/product/24/1/main5.jpg");
			pdto2.setName("숙쌈 샘플러 & 우렁쌈장소스");
			pdto2.setDescription("부드럽게 익힌 숙쌈에 뜨끈한 밥과 쌈장을 간단히 얹어 돌돌 싸먹으면 별미랍니다.");
			pdto2.setNo(24);
			pdto2.setPrice(4900);
			
			List<ProductDTO> plist = new ArrayList();
			plist.add(pdto);
			plist.add(pdto1);
			plist.add(pdto2);
			//
			
			mav.addObject("memberDTO", memberList);
			mav.addObject("recipeDTO", recipeList2);
			mav.addObject("productDTO", productList);
			mav.addObject("plist", plist);
			mav.addObject("categoryDTO", categoryList);
			
			mav.setViewName("main");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
		
	}

	/*
	 * @ 占쎌삂占쎄쉐占쎌쁽 : 占쎌뵠占쎌뒞甕곤옙
	 * @ 占쎌삂占쎄쉐占쎌뵬占쎌쁽 : 210706
	 * @ 筌롫뗀�걟 : 野껓옙占쎄퉳野껉퀗�궢占쎈읂占쎌뵠筌욑옙癰귣똻肉т틠�눖�뮉 筌롫뗄�꺖占쎈굡
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
			
			//占쎈쑓占쎌뵠占쎄숲揶쏉옙 占쎈씨占쎌몵筌롳옙 0, 占쎌뿳占쎌몵筌롳옙 1;
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
	 * @ 占쎌삂占쎄쉐占쎌쁽 : 占쎌뵠占쎌뒞甕곤옙
	 * @ 占쎌삂占쎄쉐占쎌뵬占쎌쁽 : 210710
	 * @ 筌롫뗀�걟 : foodCategory癰귨옙 占쎌쟿占쎈뻻占쎈돗 癰귣똻肉т틠�눖�뮉 筌롫뗄�꺖占쎈굡
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
			
			//占쎈쑓占쎌뵠占쎄숲揶쏉옙 占쎈씨占쎌몵筌롳옙 0, 占쎌뿳占쎌몵筌롳옙 1;
			int dataFlag = 0;
			if(!categoryFoodList2.isEmpty()) {
				dataFlag = 1;
			}
			
			
			System.out.println("categoryTitle : " + categoryTitle);
			System.out.println("categoryFoodList2 : " + categoryFoodList2);
			mav.addObject("categoryFoodDTO", categoryFoodList2);
			mav.addObject("categoryTitle",categoryTitle);
			mav.addObject("categoryNo",categoryNo);
			mav.addObject("pagingVO", vo);
			mav.addObject("dataFlag", dataFlag);
			mav.setViewName("foodCategory");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mav;
	}
		
	/*
	 * @ 占쎌삂占쎄쉐占쎌쁽 : 占쎌뵠占쎌뒞甕곤옙
	 * @ 占쎌삂占쎄쉐占쎌뵬占쎌쁽 : 2107012
	 * @ �⑥쥒而쇽옙苑깍옙苑�
	 */
	@RequestMapping(value="/serviceCenter")
	public String serviceCenter() {
		return "serviceCenter";
	}
	
	/*
	 * @ 占쎌삂占쎄쉐占쎌쁽 : 占쎌뵠占쎌뒞甕곤옙
	 * @ 占쎌삂占쎄쉐占쎌뵬占쎌쁽 : 2107013
	 * @ 筌뤴뫀諭븀㎉�똾�믤�⑥쥓�봺 
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
			
			//占쎈쑓占쎌뵠占쎄숲揶쏉옙 占쎈씨占쎌몵筌롳옙 0, 占쎌뿳占쎌몵筌롳옙 1;
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
