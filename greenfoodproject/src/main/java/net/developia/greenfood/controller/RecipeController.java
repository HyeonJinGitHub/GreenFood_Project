package net.developia.greenfood.controller;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
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

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import kr.co.shineware.nlp.komoran.model.Token;
import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.Article_My_HashDTO;
import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.RecipeTrendDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.dto.Recipe_Likes_ViewsDTO;
import net.developia.greenfood.dto.Recipe_StepDTO;
import net.developia.greenfood.dto.Recipe_ViewsDTO;
import net.developia.greenfood.dto.Recipe_likesDTO;
import net.developia.greenfood.service.AwsService;
import net.developia.greenfood.service.RecipeService;

@Controller
@Slf4j
public class RecipeController {

	@Autowired
	private RecipeService recipeService;
	@Autowired
	private AwsService awsService;
	
	int recipe_no = 0;
	int step_start = 1;
	int step_last = 1;
	
	@ResponseBody
	@RequestMapping(value = "/recipe/{recipe_no}", method = RequestMethod.GET)
	public ModelAndView recipe(HttpSession session, @PathVariable long recipe_no) {
		System.out.println("recipe page start");
		ModelAndView mav = new ModelAndView("recipePage");
		mav.addObject("id", session.getAttribute("id"));
		mav.addObject("no", recipe_no);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/adminPage", method = RequestMethod.GET)
	public ModelAndView admin(HttpSession session) {
		System.out.println("admin page start");
		ModelAndView mav = new ModelAndView();
		log.info(session.getAttribute("id") +" 아이디");
		if(session.getAttribute("id").equals("admin"))
		{
			mav = new ModelAndView("adminPage");
		}
		else
		{
			mav = new ModelAndView("main");
		}
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/productInsert", method = RequestMethod.GET)
	public ModelAndView productInsert(HttpSession session) {
		System.out.println("product insert page start");
		ModelAndView mav = new ModelAndView();
		log.info(session.getAttribute("id") +" 아이디");
		if(session.getAttribute("id").equals("admin"))
		{
			mav = new ModelAndView("productInsert");
		}
		else
		{
			mav = new ModelAndView("main");
		}
		
		return mav;
	}
	
	
	@PostMapping(value = "/RecomendRecipeList", produces = "application/text; charset=utf8")
	public @ResponseBody String RecomendRecipeList(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<ArticleDTO> alist = new ArrayList<>();
		alist = recipeService.findAllrecipe();
		
		for(int i =0; i< alist.size(); i++)
		{
			Map<String, Boolean> mp = new HashMap<>();
			int score = 0;
			int rno = alist.get(i).getNo();
			RecipeTrendDTO rtdto = new RecipeTrendDTO();
			rtdto.setKeyword(alist.get(i).getFoodname());
			mp.put(alist.get(i).getFoodname(), true);
			score += recipeService.findMyScore(rtdto);
			String t = alist.get(i).getTitle();
			String[] st = t.split(" ");
			for(int j =0; j < st.length; j++)
			{
				if(mp.containsKey(st[j])) continue;
				rtdto.setKeyword(st[j]);
				score += recipeService.findMyScore(rtdto);
				mp.put(st[j], true);
			}
			Article_My_HashDTO amhdto = new Article_My_HashDTO();
			amhdto.setRecipe_no(rno);
			List<Article_My_HashDTO> amhlist = recipeService.findAllMyHash(amhdto);
			
			for(int j = 0; j< amhlist.size(); j++)
			{
				if(mp.containsKey(amhlist.get(j).getTitle())) continue;
				rtdto.setKeyword(amhlist.get(j).getTitle());
				score += recipeService.findMyScore(rtdto);
				mp.put(amhlist.get(j).getTitle(), true);
			}
			alist.get(i).setRscore(score);
			DecimalFormat df = new DecimalFormat("0.000");
			String sscore = df.format(score * 0.000001);
			alist.get(i).setRelation_score(sscore);
		}
		
		Collections.sort(alist, new ArticleDTO.SortByLikePlusViewPlusScore());
		String json = new Gson().toJson(alist);
		return json;
	}
	
	@PostMapping(value = "/charList", produces = "application/text; charset=utf8")
	public @ResponseBody String charList(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<Recipe_Likes_ViewsDTO>rlvlist = new ArrayList<>();
		int notmp = Integer.parseInt(request.getParameter("rno"));
		List<Recipe_likesDTO> rllist = new ArrayList<>();
		Recipe_likesDTO tmp1 = new Recipe_likesDTO();
		tmp1.setRecipe_no(notmp);
		rllist = recipeService.findAllrecipeLikes(tmp1);
		
		List<Recipe_ViewsDTO> rvlist = new ArrayList<>();
		Recipe_ViewsDTO tmp2 = new Recipe_ViewsDTO();
		tmp2.setRecipe_no(notmp);
		rvlist = recipeService.findAllrecipeViews(tmp2);
		Map<String, Integer> lmp = new HashMap<>();
		Map<String, Integer> vmp = new HashMap<>();
		for(int j =0; j< rllist.size(); j++)
		{
			log.info(rllist.get(j).getLike_date()+"날짜");
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			String to = transFormat.format(rllist.get(j).getLike_date());
			if(lmp.containsKey(to))
			{
				lmp.put(to, lmp.get(to)+1);
			}
			else
			{
				lmp.put(to, 1);
			}
		}
		for(int j =0; j< rvlist.size(); j++)
		{
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			String to = transFormat.format(rvlist.get(j).getView_date());
			if(vmp.containsKey(to))
			{
				vmp.put(to, vmp.get(to)+1);
			}
			else
			{
				vmp.put(to, 1);
			}
		}
		
		for(String k : lmp.keySet())
		{
			Recipe_Likes_ViewsDTO rlvdto = new Recipe_Likes_ViewsDTO();
			rlvdto.setFlag(1);
			rlvdto.setLike_date(k);
			rlvdto.setLcount(lmp.get(k));
			if(vmp.containsKey(k))
			{
				if(vmp.get(k) > 0)
				{
					rlvdto.setView_date(k);
					rlvdto.setVcount(vmp.get(k));
					rlvdto.setFlag(3);
					vmp.put(k, 0);
				}
			}
			rlvlist.add(rlvdto);
		}
		for(String k : vmp.keySet())
		{
			if(vmp.get(k) == 0) continue;
			Recipe_Likes_ViewsDTO rlvdto = new Recipe_Likes_ViewsDTO();
			rlvdto.setFlag(2);
			rlvdto.setView_date(k);
			rlvdto.setVcount(vmp.get(k));
			rlvlist.add(rlvdto);
		}
		
		String json = new Gson().toJson(rlvlist);
		return json;
	}
	
	
	@PostMapping(value = "/charList1", produces = "application/text; charset=utf8")
	public @ResponseBody String charList1(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int rno = Integer.parseInt(request.getParameter("rno"));
		ArticleDTO atmp = new ArticleDTO();
		atmp.setNo(rno);
		ArticleDTO adto = recipeService.findRecipeNo(atmp);
		
		Map<String, Integer> mp = new HashMap<>();
		int score = 0;
		
		
		RecipeTrendDTO rtdto = new RecipeTrendDTO();
		rtdto.setKeyword(adto.getFoodname());
		
		score += recipeService.findMyScore(rtdto);
		if(score != 0)
		{
			mp.put(adto.getFoodname(), 1);
		}
		String t = adto.getTitle();
		String[] st = t.split(" ");
		for(int j =0; j < st.length; j++)
		{
			if(mp.containsKey(st[j]))
			{
				mp.put(st[j], mp.get(st[j]) +1);
				continue;
			}
			rtdto.setKeyword(st[j]);
			int tscore = recipeService.findMyScore(rtdto);
			if(tscore != 0)
			{
				mp.put(st[j], 1);
				score += tscore;
			}
		}
		Article_My_HashDTO amhdto = new Article_My_HashDTO();
		amhdto.setRecipe_no(rno);
		List<Article_My_HashDTO> amhlist = recipeService.findAllMyHash(amhdto);
		
		for(int j = 0; j< amhlist.size(); j++)
		{
			if(mp.containsKey(amhlist.get(j).getTitle()))
			{
				mp.put(amhlist.get(j).getTitle(), mp.get(amhlist.get(j).getTitle()) +1);
				continue;
			}
			rtdto.setKeyword(amhlist.get(j).getTitle());
			int tscore = recipeService.findMyScore(rtdto);
			if(tscore != 0)
			{
				mp.put(amhlist.get(j).getTitle(), 1);
				score += tscore;
			}
		}
		
		List <Recipe_Likes_ViewsDTO> mlist = new ArrayList<>();
		for(String s : mp.keySet())
		{
			Recipe_Likes_ViewsDTO tmpdto = new Recipe_Likes_ViewsDTO();
			tmpdto.setLike_date(s);
			tmpdto.setLcount(mp.get(s));
			mlist.add(tmpdto);
		}
		
		String json = new Gson().toJson(mlist);
		return json;
	}
	

	@RequestMapping(value = "/recipePost", method = RequestMethod.GET)
	public String recipePost() {
		System.out.println("recipe page start");
		return "recipePost";
	}

	@PostMapping(value = "/taglist", produces = "application/text; charset=utf8")
	public @ResponseBody String getHashtagList() throws Exception {
		List<RecipeDTO> hashtag_list = recipeService.getHashtagList();
		String json = new Gson().toJson(hashtag_list);

		return json;
	}
	
	
	@PostMapping(value = "/relationTags", produces = "application/text; charset=utf8")
	public @ResponseBody String relationTags(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		Article_My_HashDTO amhdto = new Article_My_HashDTO();
		amhdto.setRecipe_no(no);
		List<Article_My_HashDTO> amhlist = recipeService.findAllMyHash(amhdto);
		
		Article_HashDTO ahdto = new Article_HashDTO();
		ahdto.setRecipe_no(no);
		List<Article_HashDTO> ahlist = recipeService.findAllHash(ahdto);
		
		List<String> slist = new ArrayList<>();
		for(int i =0; i< amhlist.size(); i++)
		{
			slist.add(amhlist.get(i).getTitle());
		}
		for(int i =0; i< ahlist.size(); i++)
		{
			RecipeDTO rdto = new RecipeDTO();
			rdto.setNo(ahlist.get(i).getHashtag_no());
			String name = recipeService.findHashName(rdto);
			slist.add(name);
		}
		
		String json = new Gson().toJson(slist);

		return json;
	}
	
	
	

	@PostMapping(value = "/catlist", produces = "application/text; charset=utf8")
	public @ResponseBody String getFoodcategoryList() throws Exception {
		List<RecipeDTO> cat_list = recipeService.getFoodcategoryList();
		String json = new Gson().toJson(cat_list);

		return json;
	}

	/*
	 * @PostMapping(value="/titleviewchk", produces =
	 * "application/text; charset=utf8") public @ResponseBody String
	 * viewChceck(@RequestParam(value="ingredientssize[]") List<String>
	 * ingredientssize,
	 * 
	 * @RequestParam(value="ingredients[]") List<String> ingredients,
	 * 
	 * @RequestParam(value="title") String title,
	 * 
	 * @RequestParam(value="subscript") String subscript,
	 * 
	 * @RequestParam(value="foodname") String foodname,
	 * 
	 * @RequestParam(value="howmuch") String howmuch) throws Exception { String chk
	 * = "1"; log.info("실행");
	 * 
	 * 
	 * //titleView
	 * 
	 * for(String is : ingredientssize) { if(is.equals("")) { chk = "0"; break; } }
	 * for(String ig : ingredients) { if(ig.equals("")) { chk = "0"; break; } } //재료
	 * 
	 * if(title.equals("") || subscript.equals("") || foodname.equals("") ||
	 * howmuch.equals("")) { chk = "0"; }
	 * 
	 * return chk; }
	 */

	/*
	 * @GetMapping("/myinfo") public ModelAndView move_myinfo(HttpSession session) {
	 * HashMap<String, Object> map = new HashMap<String, Object>(); map.put("ID",
	 * session.getAttribute("id")); ModelAndView mav = new ModelAndView("myinfo");
	 * try { memberService.selectProfile(map); Object output =
	 * map.get("MemberNickname"); if(output == null) { mav.addObject("nickname",
	 * ""); } else { mav.addObject("nickname",
	 * map.get("MemberNickname").toString()); }
	 * 
	 * mav.addObject("profile_img", map.get("MemberProfileImg").toString()); } catch
	 * (Exception e) { e.printStackTrace(); mav.addObject("nickname", "");
	 * mav.addObject("profile_img", map.get("MemberProfileImg").toString()); }
	 * return mav; }
	 */

	@PostMapping(value = "/mytag", produces = "application/text; charset=utf8")
	public @ResponseBody String myHashtahList(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		List<String> titleList = StringProcess(request.getParameter("total_string"));
		HashMap<String, Boolean> tagmap = new HashMap<String, Boolean>();
		List<String> taglist = new ArrayList<>();
		for (int i = 0; i < titleList.size(); i++) {
			if (!tagmap.containsKey(titleList.get(i))) {
				tagmap.put(titleList.get(i), true);
				taglist.add(titleList.get(i));
			}
		}

		String json = new Gson().toJson(taglist);
		return json;
	}
	
	@PostMapping(value = "/postProduct", produces = "application/text; charset=utf8")
	public @ResponseBody String postProduct(HttpSession session,
			@RequestParam(value = "title") String title , //
			@RequestParam(value = "price") String price , //
			@RequestParam(value = "sku") String sku , //
			@RequestParam(value = "category") String category , //
			@RequestParam(value = "subscription") String subscription,
			@RequestParam(value = "detailsubscription") String detailsubscription) throws Exception {

		
		//int cat_no = recipeService.findCategory(rdto);
	
		
		return Integer.toString(recipe_no);
	}

	@PostMapping(value = "/postRecipe", produces = "application/text; charset=utf8")
	public @ResponseBody String insertRecipe(HttpSession session, @RequestParam(value = "ingredientsArr[]") List<String> ingredientsArr,
			@RequestParam(value = "ingredientssizeArr[]") List<String> ingredientssizeArr,
			@RequestParam(value = "hashtagArr[]") List<String> hashtagArr, @RequestParam(value = "title") String title, //
			@RequestParam(value = "steptitleArr[]") List<String> steptitleArr,
			@RequestParam(value = "stepsubscriptArr[]") List<String> stepsubscriptArr,
			@RequestParam(value = "calorieArr[]") List<String> calorieArr,
			@RequestParam(value = "carbohydrateArr[]") List<String> carbohydrateArr,
			@RequestParam(value = "proteinArr[]") List<String> proteinArr,
			@RequestParam(value = "fatArr[]") List<String> fatArr,
			@RequestParam(value = "saccharideArr[]") List<String> saccharideArr,
			@RequestParam(value = "sodiumArr[]") List<String> sodiumArr,
			@RequestParam(value = "cholesterolArr[]") List<String> cholesterolArr,
			@RequestParam(value = "fattyacidArr[]") List<String> fattyacidArr,
			@RequestParam(value = "servingArr[]") List<String> servingArr,
			@RequestParam(value = "subscript") String subscript, //
			@RequestParam(value = "foodname") String foodname, //
			@RequestParam(value = "howmuch") String howmuch, //
			@RequestParam(value = "foodtime") String foodtime, //
			@RequestParam(value = "foodcategory") String foodcategory) throws Exception {

		RecipeDTO rdto = new RecipeDTO();
		rdto.setTitle(foodcategory);
		int cat_no = recipeService.findCategory(rdto);
		log.info("글번호" + cat_no);
		ArticleDTO adto = new ArticleDTO();
		adto.setTitle(title);
		adto.setId((String) session.getAttribute("id"));
		adto.setExplanation(subscript);
		adto.setCookingtime(Integer.parseInt(foodtime));
		adto.setFoodname(foodname);
		adto.setHowmuch(Integer.parseInt(howmuch));
		adto.setFoodcategoryno(cat_no);
		adto.setViews(0);
		adto.setLikes(0);
		recipeService.insertRecipe(adto);
		recipe_no = recipeService.findRecipe(adto);
		log.info("글번호" + recipe_no);

		// recipe_hashtag

		for(String hasht : hashtagArr) { 
			 RecipeDTO rtmp = new RecipeDTO();
			 rtmp.setTagname(hasht); 
			 int existchk = recipeService.findHashtagCnt(rtmp);
			 if(existchk != 0)
			 {
				 int hashno = recipeService.findHashtag(rtmp);
				 log.info(hashno +"해쉬코드 번호");
				 Article_HashDTO ahdto = new Article_HashDTO(); 
				 ahdto.setHashtag_no(hashno);
				 ahdto.setRecipe_no(recipe_no); 
				 recipeService.insertHash_Recipe(ahdto); 
			 }
			 else
			 {
				 Article_My_HashDTO amhdto = new Article_My_HashDTO();
				 amhdto.setRecipe_no(recipe_no);
				 amhdto.setTitle(hasht);
				 recipeService.insertMyHash(amhdto);
			 }
		}
		 

		//insertMyHash
		
		
		// ingredients
		
		List<IngredientsDTO> ingredients_list = recipeService.findIngredients(); 
		for(int j = 0; j< ingredientsArr.size(); j++) {
			String iga = ingredientsArr.get(j);
			boolean chk = false; 
			int ino = 0; 
			int isize =0; 
			for(int i = 0; i < ingredients_list.size(); i++) { 
				if(iga.equals(ingredients_list.get(i).getName()))
				{ 
					chk = true; 
					ino = ingredients_list.get(i).getNo(); 
					isize = i; break; 
				}
			} 
			
			IngredientsDTO idto = new IngredientsDTO();
			idto.setName(iga);
			idto.setCalorie(Integer.parseInt(calorieArr.get(j)));
			idto.setCarbohydrate(Integer.parseInt(carbohydrateArr.get(j)));
			idto.setProtein(Integer.parseInt(proteinArr.get(j)));
			idto.setFat(Integer.parseInt(fatArr.get(j)));
			idto.setSaccharide(Integer.parseInt(saccharideArr.get(j)));
			idto.setSodium(Integer.parseInt(sodiumArr.get(j)));
			idto.setCholesterol(Integer.parseInt(cholesterolArr.get(j)));
			idto.setFattyacid(Integer.parseInt(fattyacidArr.get(j)));
			idto.setHowmuch(Integer.parseInt(servingArr.get(j)));
			
			if(chk == false) {
		 	   recipeService.insertIngredients(idto); 
		 	} 
			int ingredients_no =recipeService.findIngredientsOne(idto); 
			int howm =Integer.parseInt(ingredientssizeArr.get(j)); 
			log.info(ingredients_no+"재료번호");
			log.info(howm +"재료양");
			Recipe_IngredientsDTO ridto = new Recipe_IngredientsDTO(); 
			ridto.setHowmuch(howm);
		    ridto.setIngredients_no(ingredients_no); 
		    ridto.setRecipe_no(recipe_no);
		    recipeService.InsertRecipe_Ingredients(ridto); 
		  }
		
		 //step
		for(int i = 0; i< steptitleArr.size(); i++) { 
			String f = stepsubscriptArr.get(i);
			String s = steptitleArr.get(i);
			Recipe_StepDTO rsdto = new Recipe_StepDTO();
			rsdto.setRecipe_no(recipe_no);
			rsdto.setStep_title(s);
			rsdto.setStep_explanation(f);
			rsdto.setStep_no(i+1);
			recipeService.InsertStep(rsdto);
			log.info(s);
		}
		step_last = steptitleArr.size();
		
		return Integer.toString(recipe_no);
	}
	
	@PostMapping("/ThumbnailUpdate.do")
	public void ThumbnailUpdate(HttpSession session, @ModelAttribute MultipartFile thumb) throws Exception {
		
//		formData.append("thumb", $("#product_image")[0].files[0]);
//		formData.append("recipe_no", retVal);
		
		String profile_img = awsService.s3FileUploadThumbnail(thumb, (String) session.getAttribute("id") , Integer.toString(recipe_no));
		log.info(recipe_no+"글번호입니다");
		ArticleDTO adto = new ArticleDTO();
		adto.setThumbnail(profile_img);
		adto.setNo(recipe_no);
		recipeService.updateRecipeThumbnail(adto);
		
		
		
	}
	
	@PostMapping("/VideoUpdate")
	public void VideoUpdate(HttpSession session, @ModelAttribute MultipartFile recipev) throws Exception {
		
		//updateRecipeViedofile
		//awsService.s3VideoUpload(f, "recipe")
		String profile_img = awsService.s3FileUploadVideo(recipev, (String) session.getAttribute("id") , Integer.toString(recipe_no));
		
		ArticleDTO adto = new ArticleDTO();
		adto.setViedofile(profile_img);
		adto.setNo(recipe_no);
		recipeService.updateRecipeViedofile(adto);
		
	/*	ModelAndView mav = new ModelAndView("result");
		mav.addObject("url", "/greenfood/main");
		return mav;*/
		
	}
	
	
	@PostMapping(value = "/recipeDetail", produces = "application/text; charset=utf8")
	public @ResponseBody String recipeDetail(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		
		log.info("recipe datail load");
		log.info(noDetail);
		
		
		ArticleDTO adto = new ArticleDTO();
		ArticleDTO adtotmp = new ArticleDTO();
		adtotmp.setNo(Integer.parseInt(noDetail));
		adto = recipeService.findRecipeNo(adtotmp);
	
		String json = new Gson().toJson(adto);
		return json;
	}
	
	
	@PostMapping(value = "/hotKeywordList", produces = "application/text; charset=utf8")
	public @ResponseBody String hotKeywordList(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<RecipeTrendDTO> rtlist = recipeService.findTop10Trend();
		
		String json = new Gson().toJson(rtlist);
		return json;
	}
	
	

	@PostMapping(value = "/recipeDetailStep", produces = "application/text; charset=utf8")
	public @ResponseBody String recipeDetailStep(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		List<Recipe_StepDTO> rslist = new ArrayList<>();
		
		Recipe_StepDTO rsdto = new Recipe_StepDTO();
		rsdto.setRecipe_no(Integer.valueOf(noDetail));
		rslist = recipeService.findRecipeStepNo(rsdto);
		
		String json = new Gson().toJson(rslist);
		return json;
	}
	
	@PostMapping(value = "/recipeIngredients", produces = "application/text; charset=utf8")
	public @ResponseBody String recipeIngredients(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		List<Recipe_IngredientsDTO> rilist = new ArrayList<>();
		
		Recipe_IngredientsDTO ridto = new Recipe_IngredientsDTO();
		ridto.setRecipe_no(Integer.valueOf(noDetail));
		rilist = recipeService.findRecipeIngredients(ridto);
		
		for(int i =0; i< rilist.size(); i++)
		{
			IngredientsDTO idto = new IngredientsDTO();
			idto.setNo(rilist.get(i).getIngredients_no());
			String name = recipeService.findIngreName(idto);
			rilist.get(i).setName(name);
		}
		
		
		String json = new Gson().toJson(rilist);
		return json;
	}
	
	@PostMapping(value = "/recipeIngredientsInfo", produces = "application/text; charset=utf8")
	public @ResponseBody String recipeIngredientsInfo(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		List<Recipe_IngredientsDTO> rilist = new ArrayList<>();
		List<IngredientsDTO> ilist = new ArrayList<>();
		
		
		Recipe_IngredientsDTO ridto = new Recipe_IngredientsDTO();
		ridto.setRecipe_no(Integer.valueOf(noDetail));
		rilist = recipeService.findRecipeIngredients(ridto);
		
		for(int i =0; i< rilist.size(); i++)
		{
			int ino = rilist.get(i).getIngredients_no();
			IngredientsDTO idto = new IngredientsDTO();
			idto.setNo(ino);
			
			IngredientsDTO idtotmp = recipeService.findIngredientsSelect(idto);
			if(idtotmp != null )
			{
				log.info(idtotmp.getName()+" 번호");
				ilist.add(idtotmp);
			}
			
		}
		
		ArticleDTO adto = new ArticleDTO();
		adto.setNo(Integer.parseInt(noDetail));
		int people = recipeService.findHowMany(adto);
		
		
		IngredientsDTO iresult = new IngredientsDTO();
		int calorie = 0;
		int carbohydrate = 0;
		int protein = 0;
		int fat = 0;
		int saccharide = 0;
		int sodium = 0;
		int cholesterol = 0;
		int fattyacid = 0;
		for(int i = 0; i<ilist.size(); i++)
		{
			int serving = rilist.get(i).getHowmuch();
			int howmuch = ilist.get(i).getHowmuch();
			log.info(ilist.get(i).getName() + serving +" "+ howmuch);
			
			int weserving = serving/howmuch;
			calorie += ilist.get(i).getCalorie()*weserving;
			carbohydrate += ilist.get(i).getCarbohydrate()*weserving;
			protein += ilist.get(i).getProtein()*weserving;
			fat += ilist.get(i).getFat()*weserving;
			saccharide += ilist.get(i).getSaccharide()*weserving;
			sodium += ilist.get(i).getSodium()*weserving;
			cholesterol += ilist.get(i).getCholesterol()*weserving;
			fattyacid += ilist.get(i).getFattyacid()*weserving;
			
		}
		
		calorie = (int) (calorie/(1987.7*people)*100);
		carbohydrate = (int) (carbohydrate/(287.9*people)*100);
		protein = (int) (protein/(72.4*people)*100);
		fat = (int) (fat/(49.5*people)*100);
		saccharide = (int) (saccharide/(60.2*people)*100);
		sodium = (int) (sodium/(3255.0*people)*100);
		cholesterol = (int) (cholesterol/(260.4*people)*100);
		fattyacid = (int) (fattyacid/(16.6*people)*100);
		
		iresult.setCalorie(calorie);
		iresult.setCarbohydrate(carbohydrate);
		iresult.setCholesterol(cholesterol);
		iresult.setFat(fat);
		iresult.setFattyacid(fattyacid);
		iresult.setProtein(protein);
		iresult.setSaccharide(saccharide);
		iresult.setSodium(sodium);
		
		
		String json = new Gson().toJson(iresult);
		return json;
	}
	
	
	@PostMapping(value = "/likeschk", produces = "application/text; charset=utf8")
	public @ResponseBody String likeschk(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		Recipe_likesDTO rldto = new Recipe_likesDTO();
		rldto.setRecipe_no(Integer.parseInt(noDetail));
		rldto.setMember_id((String) session.getAttribute("id"));
		int chk = recipeService.chkMyLikeRecipe(rldto);
		
		String result = "";
		if(chk > 0)
		{
			result = "YES";
		}
		else
		{
			result = "NO";
		}
		
		return result;
	}
	
	@PostMapping(value = "/Insertlike", produces = "application/text; charset=utf8")
	public @ResponseBody String Insertlike(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		Recipe_likesDTO rldto = new Recipe_likesDTO();
		rldto.setRecipe_no(Integer.parseInt(noDetail));
		rldto.setMember_id((String) session.getAttribute("id"));
		recipeService.InsertMyLikeRecipe(rldto);
		
		ArticleDTO adto = new ArticleDTO();
		adto.setNo(Integer.parseInt(noDetail));
		recipeService.InsertMyLikeToRecipe(adto);
		int likescnt = recipeService.countMyLikes(adto);
		
		
		return Integer.toString(likescnt);
		
	}
	
	@PostMapping(value = "/Deletelike", produces = "application/text; charset=utf8")
	public @ResponseBody String Deletelike(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		Recipe_likesDTO rldto = new Recipe_likesDTO();
		rldto.setRecipe_no(Integer.parseInt(noDetail));
		rldto.setMember_id((String) session.getAttribute("id"));
		recipeService.DelMyLikeRecipe(rldto);
		
		ArticleDTO adto = new ArticleDTO();
		adto.setNo(Integer.parseInt(noDetail));
		recipeService.DelMyLikeToRecipe(adto);
		int likescnt = recipeService.countMyLikes(adto);
		
		
		return Integer.toString(likescnt);
		
	}
	
	@PostMapping(value = "/UpdateViews", produces = "application/text; charset=utf8")
	public @ResponseBody String UpdateViews(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String noDetail = request.getParameter("no");
		ArticleDTO adto = new ArticleDTO();
		adto.setNo(Integer.parseInt(noDetail));
	
	    Cookie cookies[] = request.getCookies();
	    Map map = new HashMap();
	    if(request.getCookies() != null){
		    for (int i = 0; i < cookies.length; i++) {
			    Cookie obj = cookies[i];
			    map.put(obj.getName(),obj.getValue());
		    }
	    }

	    // 저장된 쿠키중에 read_count 만 불러오기
	    String readCount = (String) map.get("read_count");
	     // 저장될 새로운 쿠키값 생성
	    String newReadCount = "|" + noDetail;

	    // 저장된 쿠키에 새로운 쿠키값이 존재하는 지 검사
	    if ( StringUtils.indexOfIgnoreCase(readCount, newReadCount) == -1 ) {
	          // 없을 경우 쿠키 생성
	          Cookie cookie = new Cookie("read_count", readCount + newReadCount);
	         
	          response.addCookie(cookie);
	          recipeService.UpdateMyView(adto);
	          Recipe_ViewsDTO rvdto = new Recipe_ViewsDTO();
	          rvdto.setRecipe_no(Integer.parseInt(noDetail));
	          recipeService.InsertViewLog(rvdto);
	    }
	    
		int viewscnt = recipeService.chkMyView(adto);
		return Integer.toString(viewscnt);
	}
	
	
	
	@PostMapping("/StepUpdate.do")
	public void StepUpdate(HttpSession session, @ModelAttribute MultipartFile[] stepimage) throws Exception {
		
		int start = step_start;
		for(MultipartFile multipartFile : stepimage) {
			String profile_img = awsService.s3FileUploadStep(multipartFile, (String) session.getAttribute("id"), Integer.toString(recipe_no), Integer.toString(start));
			Recipe_StepDTO rsdto = new Recipe_StepDTO();
			rsdto.setRecipe_no(recipe_no);
			rsdto.setStep_no(start);
			rsdto.setStep_img(profile_img);
			recipeService.updateStep(rsdto);
			start += 1;
			if(start > step_last)
			{
				break;
			}
		 }
		
	
		log.info("step update");
		
	}

	public static List<String> StringProcess(String str) {

		List<String> titleList = new ArrayList<>();
		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		String strToAnalyze = str;

		KomoranResult analyzeResultList = komoran.analyze(strToAnalyze);

		List<Token> tokenList = analyzeResultList.getTokenList();
		for (Token token : tokenList) {
			if (token.getPos().charAt(0) == 'N' && token.getPos().charAt(1) == 'N') {
				titleList.add(token.getMorph());
			}
		}
		return titleList;

	}
	
	

}
