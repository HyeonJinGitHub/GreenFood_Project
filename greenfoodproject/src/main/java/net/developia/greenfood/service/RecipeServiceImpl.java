package net.developia.greenfood.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.ArticleDAO;
import net.developia.greenfood.dao.Article_HashDAO;
import net.developia.greenfood.dao.Article_My_HashDAO;
import net.developia.greenfood.dao.IngredientsDAO;
import net.developia.greenfood.dao.RecipeDAO;
import net.developia.greenfood.dao.Recipe_IngredientsDAO;
import net.developia.greenfood.dao.Recipe_StepDAO;
import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.Article_My_HashDTO;
import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.dto.Recipe_StepDTO;


@Service
@Slf4j
public class RecipeServiceImpl implements RecipeService {

	@Autowired
	@Resource(name="RecipeDAO")
	private RecipeDAO recipeDAO;
	
	@Autowired
	@Resource(name="ArticleDAO")
	private ArticleDAO articleDAO;
	
	@Autowired
	@Resource(name="IngredientsDAO")
	private IngredientsDAO ingredientsDAO;
	
	@Autowired
	@Resource(name="Article_HashDAO")
	private Article_HashDAO article_hashDAO;
	
	@Autowired
	@Resource(name="Article_My_HashDAO")
	private Article_My_HashDAO article_my_hashDAO;
	
	@Autowired
	@Resource(name="Recipe_IngredientsDAO")
	private Recipe_IngredientsDAO recipe_ingredientsDAO;
	
	@Autowired
	@Resource(name="Recipe_StepDAO")
	private Recipe_StepDAO recipe_stepDAO;

	@Override
	public List<RecipeDTO> getHashtagList() throws Exception {
		return recipeDAO.getHashtagList();
	}

	@Override
	public List<RecipeDTO> getFoodcategoryList() throws Exception {
		return recipeDAO.getFoodcategoryList();
	}

	@Override
	public List<IngredientsDTO> findIngredients() throws Exception {
		return ingredientsDAO.findIngredients();
	}

	@Override
	public void insertIngredients(IngredientsDTO ingredientsDTO) throws Exception {
		ingredientsDAO.insertIngredients(ingredientsDTO);
	}

	@Override
	public void insertRecipe(ArticleDTO adto) throws Exception {
		articleDAO.insertRecipe(adto);
	}

	@Override
	public int findRecipe(ArticleDTO adto) throws Exception {
		return articleDAO.findRecipe(adto);
	}

	@Override
	public int findCategory(RecipeDTO recipeDTO) throws Exception {
		log.info(recipeDTO.getTitle());
		return recipeDAO.findCategory(recipeDTO);
	}

	@Override
	public int findHashtag(RecipeDTO rtmp) throws Exception {
		return recipeDAO.findHashtag(rtmp);
	}

	@Override
	public void insertHash_Recipe(Article_HashDTO ahdto) throws Exception {
		article_hashDAO.insertHash_Recipe(ahdto);
	}

	@Override
	public int findIngredientsOne(IngredientsDTO ingredientsDTO) throws Exception {
		// TODO Auto-generated method stub
		return ingredientsDAO.findIngredientsOne(ingredientsDTO);
	}

	@Override
	public void InsertRecipe_Ingredients(Recipe_IngredientsDTO ridto) throws Exception {
		recipe_ingredientsDAO.InsertRecipe_Ingredients(ridto);
	}

	@Override
	public void updateRecipeThumbnail(ArticleDTO adto) throws Exception {
		articleDAO.updateRecipeThumbnail(adto);
	}

	@Override
	public void InsertStep(Recipe_StepDTO rsdto) throws Exception {
		recipe_stepDAO.InsertStep(rsdto);
	}

	@Override
	public void updateStep(Recipe_StepDTO rsdto) throws Exception {
		recipe_stepDAO.updateStep(rsdto);
	}

	@Override
	public int findHashtagCnt(RecipeDTO rtmp) throws Exception {
		return recipeDAO.findHashtagCnt(rtmp);
	}

	@Override
	public void insertMyHash(Article_My_HashDTO amhdto) throws Exception {
		article_my_hashDAO.insertMyHash(amhdto);
	}

}
