package net.developia.greenfood.service;

import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.Article_My_HashDTO;
import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.dto.Recipe_StepDTO;
import net.developia.greenfood.dto.Recipe_likesDTO;

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
	void updateRecipeThumbnail(ArticleDTO adto) throws Exception;
	void InsertStep(Recipe_StepDTO rsdto) throws Exception;
	void updateStep(Recipe_StepDTO rsdto) throws Exception;
	int findHashtagCnt(RecipeDTO rtmp) throws Exception;
	void insertMyHash(Article_My_HashDTO amhdto) throws Exception;
	void updateRecipeViedofile(ArticleDTO adto) throws Exception;
	ArticleDTO findRecipeNo(ArticleDTO adtotmp) throws Exception;
	List<Recipe_StepDTO> findRecipeStepNo(Recipe_StepDTO rsdto) throws Exception;
	List<Recipe_IngredientsDTO> findRecipeIngredients(Recipe_IngredientsDTO ridto) throws Exception;
	String findIngreName(IngredientsDTO idto) throws Exception;
	int chkMyLikeRecipe(Recipe_likesDTO rldto) throws Exception;
	void InsertMyLikeToRecipe(ArticleDTO adto) throws Exception;
	void InsertMyLikeRecipe(Recipe_likesDTO rldto) throws Exception;
	void DelMyLikeToRecipe(ArticleDTO adto) throws Exception;
	void DelMyLikeRecipe(Recipe_likesDTO rldto) throws Exception;
	int countMyLikes(ArticleDTO adto) throws Exception;
	void UpdateMyView(ArticleDTO adto) throws Exception;
	int chkMyView(ArticleDTO adto)throws Exception;
	IngredientsDTO findIngredientsSelect(IngredientsDTO idto)throws Exception;
	int findHowMany(ArticleDTO adto)throws Exception;
}
