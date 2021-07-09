package net.developia.greenfood.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.service.IngredientService;

@Controller
@RequestMapping
public class SrchIngrController {

	@Autowired
	private IngredientService ingredientService;

	private static Logger logger = LoggerFactory.getLogger(SrchIngrController.class);

	@GetMapping("/searchIngredient")
	public String searchIngredient() {
		return "searchPage";
	}

	// DB에서 ingredient 를 가져온다
	@ResponseBody
	@PostMapping(value = { "/getIngredient" })
	public Map<String, Object> getIngredient() {
		try {
			List<IngredientDTO> ingredientList = ingredientService.getingredientList();

			Map<String, Object> result = new HashMap<String, Object>();
			result.put("ingredientList", ingredientList);

			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 입력받은 재료를 프런트에서 받아옴
	@ResponseBody
	@PostMapping(value = { "/getSelectedIngredient" })
	public void getSelectedIngredient(@RequestBody String httpParam) {

		JSONParser jsonParser = new JSONParser();
		JSONArray insertParam = null;

		// parsing
		try {
			insertParam = (JSONArray) jsonParser.parse(httpParam);

			List<Integer> ingredientList = new ArrayList<>();

			for (int i = 0; i < insertParam.size(); i++) {
				JSONObject insertData = (JSONObject) insertParam.get(i);
				ingredientList.add(Integer.parseInt((String) insertData.get("no")));
			}

			Map<String, Object> hm = new HashMap<>();
			hm.put("ingredientList", ingredientList);

			List<RecipeDTO> recipeList = ingredientService.getRecipeList(hm);

			for (RecipeDTO r : recipeList) {
				System.out.println(r.getNo());
				System.out.println(r.getTitle());
				System.out.println(r.getTagname());
			}

		} catch (ParseException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
