package net.developia.greenfood.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import kr.co.shineware.nlp.komoran.model.Token;
import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.service.RecipeService;

@Controller
@Slf4j
public class RecipeController {

	@Autowired
	RecipeService recipeService;

	@RequestMapping(value = "/recipe", method = RequestMethod.GET)
	public String home2() {
		System.out.println("recipe page start");
		return "recipePage2";
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

	@PostMapping(value = "/insertRecipe", produces = "application/text; charset=utf8")
	public @ResponseBody void insertRecipe(HttpServletRequest request, HttpServletResponse response, @RequestParam(value="ingredientsArr[]") List<String> ingredientsArr,
																									 @RequestParam(value="ingredientssizeArr[]") List<String> ingredientssizeArr,
																									 @RequestParam(value="steptitleArr[]") List<String> steptitleArr,
																									 @RequestParam(value="stepimageArr[]") List<String> stepimageArr,
																									 @RequestParam(value="stepsubscriptArr[]") List<String> stepsubscriptArr,
																									 @RequestParam(value="hashtagArr[]") List<String> hashtagArr,
			 																						 @RequestParam(value="title") String title,//
			 																						 @RequestParam(value="subscript") String subscript,//
			 																						 @RequestParam(value="foodname") String foodname,//
			 																						 @RequestParam(value="howmuch") String howmuch,//
			 																						 @RequestParam(value="foodtime") String foodtime,//
			 																						 @RequestParam(value="videofile") String videofile,
			 																						 @RequestParam(value="product_image") String product_image,
			 																						 @RequestParam(value="foodcategory") String foodcategory)throws Exception {

		 RecipeDTO rdto = new RecipeDTO();
		 rdto.setTitle(foodcategory);
		 int cat_no = recipeService.findCategory(rdto);
		 log.info("글번호" + cat_no);
			/*
			 * ArticleDTO adto = new ArticleDTO(); adto.setTitle(title);
			 * adto.setId("eunna8675"); adto.setExplanation(subscript);
			 * adto.setCookingtime(Integer.parseInt(foodtime)); adto.setFoodname(foodname);
			 * adto.setHowmuch(Integer.parseInt(howmuch)); adto.setFoodcategoryno(cat_no);
			 * adto.setViews(0); adto.setLikes(0);
			 * 
			 * recipeService.insertRecipe(adto); int recipe_no =
			 * recipeService.findRecipe(adto); log.info("글번호" + recipe_no);
			 */
		 
		 
		 //recipe_hashtag
		 
			/*
			 * for(String hasht : hashtagArr) { RecipeDTO rtmp = new RecipeDTO();
			 * rtmp.setTagname(hasht); int hashno = recipeService.findHashtag(rtmp);
			 * Article_HashDTO ahdto = new Article_HashDTO(); ahdto.setHashtag_no(hashno);
			 * ahdto.setRecipe_no(recipe_no); recipeService.insertHash_Recipe(ahdto); }
			 */
		 
		 
		 //ingredients
			/*
			 * List<IngredientsDTO> ingredients_list = recipeService.findIngredients(); for
			 * (String iga : ingredientsArr) { boolean chk = false; int ino = 0; int isize =
			 * 0; for(int i = 0; i < ingredients_list.size(); i++) { if
			 * (iga.equals(ingredients_list.get(i))) { chk = true; ino =
			 * ingredients_list.get(i).getNo(); isize = i; break; } } if(chk == false) {
			 * recipeService.insertIngredients(iga); } int ingredients_no =
			 * recipeService.findIngredientsOne(iga); int howm =
			 * Integer.parseInt(ingredientssizeArr.get(isize)); Recipe_IngredientsDTO ridto
			 * = new Recipe_IngredientsDTO(); ridto.setHowmuch(howm);
			 * ridto.setIngredients_no(ingredients_no); ridto.setRecipe_no(recipe_no);
			 * recipeService.InsertRecipe_Ingredients(ridto); }
			 */
		 
	        
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
