package net.developia.greenfood.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.service.RecipeService;

@Controller
public class RecipeController {
	
	@Autowired
	RecipeService recipeService;
	
	@RequestMapping(value = "/recipe", method = RequestMethod.GET)
	public String home() { 
		System.out.println("recipe page start"); 
		return "recipePage"; 
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

}
