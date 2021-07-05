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
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import kr.co.shineware.nlp.komoran.model.Token;
import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.service.RecipeService;

@Controller
@Slf4j
public class RecipeController {
	
	@Autowired
	RecipeService recipeService;
	
	@RequestMapping(value = "/recipe", method = RequestMethod.GET)
	public String home() { 
		System.out.println("recipe page start"); 
		return "recipePage"; 
	}
	
	@RequestMapping(value = "/recipe2", method = RequestMethod.GET)
	public String home2() { 
		System.out.println("recipe page start"); 
		return "recipePage2"; 
	}
	
	@RequestMapping(value = "/recipePost", method = RequestMethod.GET)
	public String recipePost() { 
		System.out.println("recipe page start"); 
		return "recipePost"; 
	}
	
	
	@PostMapping(value="/taglist", produces = "application/text; charset=utf8")
	public @ResponseBody String getHashtagList()  throws Exception {
		List<RecipeDTO> hashtag_list = recipeService.getHashtagList();
		String json = new Gson().toJson(hashtag_list);
		
		return json;
	}
	
	@PostMapping(value="/mytag", produces = "application/text; charset=utf8")
	public @ResponseBody String myHashtahList(HttpServletRequest request, HttpServletResponse response)  throws Exception {

		List<String> titleList = StringProcess(request.getParameter("total_string"));
		HashMap<String, Boolean> tagmap = new HashMap<String, Boolean>();
		List<String> taglist = new ArrayList<>();
		for(int i =0; i< titleList.size(); i++)
		{
			if(!tagmap.containsKey(titleList.get(i))) 
			{
				tagmap.put(titleList.get(i), true);
				taglist.add(titleList.get(i));
			}
		}
		
		String json = new Gson().toJson(taglist);
		return json;
	}
	
	public static List<String> StringProcess(String str){
		
		List<String> titleList = new ArrayList<>();
		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		String strToAnalyze = str;

		KomoranResult analyzeResultList = komoran.analyze(strToAnalyze);
		

		List<Token> tokenList = analyzeResultList.getTokenList();
		for (Token token : tokenList) {
			if(token.getPos().charAt(0) == 'N' && token.getPos().charAt(1) =='N')
			{
				titleList.add(token.getMorph());
			}
		}
		return titleList;

	}

}
