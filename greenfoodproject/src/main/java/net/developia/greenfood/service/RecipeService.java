package net.developia.greenfood.service;

import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;

public interface RecipeService {
	List<RecipeDTO> getHashtagList() throws Exception;
	List<RecipeDTO> getFoodcategoryList() throws Exception;
	List<IngredientsDTO> findIngredients() throws Exception;
	void insertIngredients(IngredientsDTO ingredientsDTO) throws Exception;
	void insertRecipe(ArticleDTO adto) throws Exception;
	int findRecipe(ArticleDTO adto) throws Exception;
	int findCategory(RecipeDTO recipeDTO) throws Exception;
	int findHashtag(RecipeDTO rtmp) throws Exception;
	void insertHash_Recipe(Article_HashDTO ahdto) throws Exception;
	int findIngredientsOne(IngredientsDTO ingredientsDTO) throws Exception;
	void InsertRecipe_Ingredients(Recipe_IngredientsDTO ridto) throws Exception;
}
