package net.developia.greenfood.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.RecipeDTO;

public interface IngredientService {

	List<IngredientDTO> getingredientList() throws Exception;

	List<RecipeDTO> getRecipeList(Map<String, Object> hm) throws Exception;

	List<RecipeDTO> getAllRecipeList() throws Exception;

}
