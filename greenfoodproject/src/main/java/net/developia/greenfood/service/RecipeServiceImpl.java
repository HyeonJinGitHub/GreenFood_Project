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
import net.developia.greenfood.dao.RecipeTrendDAO;
import net.developia.greenfood.dao.Recipe_IngredientsDAO;
import net.developia.greenfood.dao.Recipe_StepDAO;
import net.developia.greenfood.dao.Recipe_ViewsDAO;
import net.developia.greenfood.dao.Recipe_likesDAO;
import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.Article_My_HashDTO;
import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.RecipeTrendDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.dto.Recipe_StepDTO;
import net.developia.greenfood.dto.Recipe_ViewsDTO;
import net.developia.greenfood.dto.Recipe_likesDTO;


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
	
	@Autowired
	@Resource(name="Recipe_likesDAO")
	private Recipe_likesDAO recipe_likesDAO;

	@Autowired
	@Resource(name="Recipe_ViewsDAO")
	private Recipe_ViewsDAO recipe_viewsDAO;
	
	@Autowired
	@Resource(name="RecipeTrendDAO")
	private RecipeTrendDAO recipeTrendDAO;

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

	@Override
	public void updateRecipeViedofile(ArticleDTO adto) throws Exception {
		articleDAO.updateRecipeViedofile(adto);
	}

	@Override
	public ArticleDTO findRecipeNo(ArticleDTO adtotmp) throws Exception {
		return articleDAO.findRecipeNo(adtotmp);
	}

	@Override
	public List<Recipe_StepDTO> findRecipeStepNo(Recipe_StepDTO rsdto) throws Exception {
		return recipe_stepDAO.findRecipeStepNo(rsdto);
	}

	@Override
	public List<Recipe_IngredientsDTO> findRecipeIngredients(Recipe_IngredientsDTO ridto) throws Exception {
		// TODO Auto-generated method stub
		return recipe_ingredientsDAO.findRecipeIngredients(ridto);
	}

	@Override
	public String findIngreName(IngredientsDTO idto) throws Exception {
		// TODO Auto-generated method stub
		return ingredientsDAO.findIngreName(idto);
	}

	@Override
	public int chkMyLikeRecipe(Recipe_likesDTO rldto) throws Exception {
		// TODO Auto-generated method stub
		return recipe_likesDAO.chkMyLikeRecipe(rldto);
	}

	@Override
	public void InsertMyLikeToRecipe(ArticleDTO adto) throws Exception {
		articleDAO.InsertMyLikeToRecipe(adto);
	}

	@Override
	public void InsertMyLikeRecipe(Recipe_likesDTO rldto) throws Exception {
		recipe_likesDAO.InsertMyLikeRecipe(rldto);
	}

	@Override
	public void DelMyLikeToRecipe(ArticleDTO adto) throws Exception {
		articleDAO.DelMyLikeToRecipe(adto);
	}

	@Override
	public void DelMyLikeRecipe(Recipe_likesDTO rldto) throws Exception {
		recipe_likesDAO.DelMyLikeRecipe(rldto);
	}

	@Override
	public int countMyLikes(ArticleDTO adto) throws Exception {
		// TODO Auto-generated method stub
		return articleDAO.countMyLikes(adto);
	}

	@Override
	public void UpdateMyView(ArticleDTO adto) throws Exception {
		// TODO Auto-generated method stub
		articleDAO.UpdateMyView(adto);
	}

	@Override
	public int chkMyView(ArticleDTO adto) throws Exception {
		// TODO Auto-generated method stub
		return articleDAO.chkMyView(adto);
	}

	@Override
	public IngredientsDTO findIngredientsSelect(IngredientsDTO idto) throws Exception {
		// TODO Auto-generated method stub
		return ingredientsDAO.findIngredientsSelect(idto);
	}

	@Override
	public int findHowMany(ArticleDTO adto) throws Exception {
		// TODO Auto-generated method stub
		return articleDAO.findHowMany(adto);
	}

	@Override
	public List<ArticleDTO> findAllrecipe() throws Exception {
		// TODO Auto-generated method stub
		return articleDAO.findAllrecipe();
	}

	@Override
	public void InsertViewLog(Recipe_ViewsDTO rvdto) throws Exception {
		recipe_viewsDAO.InsertViewLog(rvdto);
	}

	@Override
	public List<Recipe_likesDTO> findAllrecipeLikes(Recipe_likesDTO tmp1) throws Exception {
		// TODO Auto-generated method stub
		return recipe_likesDAO.findAllrecipeLikes(tmp1);
	}

	@Override
	public List<Recipe_ViewsDTO> findAllrecipeViews(Recipe_ViewsDTO tmp2) throws Exception {
		// TODO Auto-generated method stub
		return recipe_viewsDAO.findAllrecipeViews(tmp2);
	}

	@Override
	public int findMyScore(RecipeTrendDTO rtdto) throws Exception {
		// TODO Auto-generated method stub
		return recipeTrendDAO.findMyScore(rtdto);
	}

	@Override
	public List<Article_My_HashDTO> findAllMyHash(Article_My_HashDTO amhdto) throws Exception {
		// TODO Auto-generated method stub
		return article_my_hashDAO.findAllMyHash(amhdto);
	}

	@Override
	public List<Article_HashDTO> findAllHash(Article_HashDTO ahdto) throws Exception {
		// TODO Auto-generated method stub
		return article_hashDAO.findAllHash(ahdto);
	}

	@Override
	public String findHashName(RecipeDTO rdto) throws Exception {
		// TODO Auto-generated method stub
		return recipeDAO.findHashName(rdto);
	}

	@Override
	public List<RecipeTrendDTO> findTop10Trend() throws Exception {
		// TODO Auto-generated method stub
		return recipeTrendDAO.findTop10Trend();
	}



}
