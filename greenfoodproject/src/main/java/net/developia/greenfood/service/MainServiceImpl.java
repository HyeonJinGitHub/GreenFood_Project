package net.developia.greenfood.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.MainDAO;
import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.CategoryFoodDTO;
import net.developia.greenfood.dto.FoodCategoryDTO;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;

@Service
@Slf4j
public class MainServiceImpl  implements MainService{
	
	@Autowired
	MainDAO mainDAO;

	@Override
	public List<MemberDTO> getMember() throws Exception {
		List<MemberDTO> list;
		try {
			list = mainDAO.getMember();
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		
		return list;
	}


	@Override
	public int countRecipe(String keyword) throws Exception {
		int cnt = mainDAO.countRecipe(keyword);
		return cnt;
	}

	@Override
	public List<ArticleDTO> getRecipe() throws Exception {
		List<ArticleDTO> list;
		try {
			list = mainDAO.getRecipe();
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		
		return list;
	}

	@Override
	public List<RecipeSearchDTO> getSearchRecipe(RecipeSearchDTO recipeSearchDTO) throws Exception {
		
		List<RecipeSearchDTO> list;
		try {
			list = mainDAO.getSearchRecipe(recipeSearchDTO);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		
		return list;
	}


	@Override
	public List<FoodCategoryDTO> getCategory() throws Exception {
		List<FoodCategoryDTO> list;
		
		try {
			list = mainDAO.getCategory();
			
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		
		return list;
	}


	@Override
	public int countCategoryFood(CategoryFoodDTO categoryFoodDTO) throws Exception {
		int cnt = mainDAO.countCategoryFood(categoryFoodDTO);
		return cnt;
	}


	@Override
	public List<CategoryFoodDTO> getCategoryFood(CategoryFoodDTO categoryFoodDTO) throws Exception {
		List<CategoryFoodDTO> list;
		
		try {
			list = mainDAO.getCategoryFood(categoryFoodDTO);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		return list;
	}


	@Override
	public String getCategoryTitle(int categoryNo) throws Exception {
		String categoryTitle = mainDAO.getCategoryTitle(categoryNo);
		return categoryTitle;
	}


	@Override
	public int countCategoryFoodAll() throws Exception {
		int cnt = mainDAO.countCategoryFoodAll();
		return cnt;
	}


	@Override
	public List<CategoryFoodDTO> getCategoryFoodAll(CategoryFoodDTO categoryFoodDTO) throws Exception {
		List<CategoryFoodDTO> list;
		
		try {
			list = mainDAO.getCategoryFoodAll(categoryFoodDTO);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		return list;
	}

}
