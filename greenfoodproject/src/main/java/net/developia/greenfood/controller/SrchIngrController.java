package net.developia.greenfood.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.developia.greenfood.dto.MainIngredientDTO;
import net.developia.greenfood.dto.SubIngredientDTO;
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

	// DB에서 main ingredient category를 가져온다
	@ResponseBody
	@PostMapping(value = { "/getMainIngredient" })
	public Map<String, Object> getMainIngredient(Model model, HttpSession session) {
		try {
			List<MainIngredientDTO> mainIngredientList = ingredientService.getMainIngredientList();

			Map<String, Object> result = new HashMap<String, Object>();
			result.put("mainIngredientList", mainIngredientList);

			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// DB에서 sub ingredient category를 가져온다
	@ResponseBody
	@PostMapping(value = { "/getSubIngredient" })
	public Map<String, Object> getSubIngredient(String mainIngredientNo) {
		try {
			List<SubIngredientDTO> subIngredientList = ingredientService
					.getSubIngredientList(Integer.parseInt(mainIngredientNo));

			Map<String, Object> result = new HashMap<String, Object>();
			result.put("subIngredientList", subIngredientList);

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
		try {
			JSONArray insertParam = (JSONArray) jsonParser.parse(httpParam);
		} catch (ParseException e) {
			e.printStackTrace();
		}

	}

}
