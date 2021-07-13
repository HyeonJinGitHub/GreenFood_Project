package net.developia.greenfood.service;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.CategoryFoodDTO;
import net.developia.greenfood.dto.FoodCategoryDTO;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.PagingVO;
import net.developia.greenfood.dto.ProductDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;
import net.developia.greenfood.dto.ShoppingCartDTO;

public interface MainService {

	public List<MemberDTO> getMember() throws Exception;
	
	public List<ArticleDTO> getRecipe() throws Exception;
	
	public List<RecipeSearchDTO> getSearchRecipe(RecipeSearchDTO recipeSearchDTO) throws Exception;
	
	public int countRecipe(String keyword) throws Exception;
	
	public List<FoodCategoryDTO> getCategory() throws Exception;
	
	public int countCategoryFood(CategoryFoodDTO categoryFoodDTO) throws Exception;
	
	public List<CategoryFoodDTO> getCategoryFood(CategoryFoodDTO categoryFoodDTO) throws Exception;
	
	public String getCategoryTitle(int categoryNo) throws Exception;
	
	public int countCategoryFoodAll() throws Exception;
	
	public List<CategoryFoodDTO> getCategoryFoodAll(CategoryFoodDTO categoryFoodDTO) throws Exception;
	
	public List<ProductDTO> getProduct() throws Exception;

	public List<ShoppingCartDTO> getShoppingCart(String id) throws Exception;
}
