package net.developia.greenfood.service;

import java.util.List;
import java.util.Map;

import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.IngredientSearchRecipeDTO;

public interface IngredientService {

	List<IngredientDTO> getingredientList() throws Exception;

	List<IngredientSearchRecipeDTO> getRecipeList(Map<String, Object> hm) throws Exception;

	List<IngredientSearchRecipeDTO> getAllRecipeList() throws Exception;

}
