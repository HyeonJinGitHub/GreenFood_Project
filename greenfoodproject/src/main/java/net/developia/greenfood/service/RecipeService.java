package net.developia.greenfood.service;

import java.util.List;

import net.developia.greenfood.dto.RecipeDTO;

public interface RecipeService {
	List<RecipeDTO> getHashtagList() throws Exception;
	List<RecipeDTO> getFoodcategoryList() throws Exception;
}
