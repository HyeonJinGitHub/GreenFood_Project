package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.amazonaws.services.gluedatabrew.model.Recipe;
import com.amazonaws.services.iot.model.SqlParseException;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.CategoryFoodDTO;
import net.developia.greenfood.dto.FoodCategoryDTO;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.PagingVO;
import net.developia.greenfood.dto.ProductDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;
import net.developia.greenfood.dto.ShoppingCartDTO;

@Repository
public interface MainDAO {
	public List<MemberDTO> getMember() throws SQLException;

	public List<RecipeSearchDTO> getSearchRecipe(RecipeSearchDTO recipeSearchDTO) throws SQLException;
	
	public List<ArticleDTO> getRecipe() throws SQLException;
	
	public int countRecipe(String keyword) throws SQLException;
	
	public List<FoodCategoryDTO> getCategory() throws SQLException;
	
	public int countCategoryFood(CategoryFoodDTO categoryFoodDTO) throws SQLException;
	
	public List<CategoryFoodDTO> getCategoryFood(CategoryFoodDTO categoryFoodDTO) throws SQLException;
	
	public String getCategoryTitle(int categoryNo) throws SQLException;
	
	public int countCategoryFoodAll() throws SQLException;
	
	public List<CategoryFoodDTO> getCategoryFoodAll(CategoryFoodDTO categoryFoodDTO) throws SQLException;

	public List<RecipeSearchDTO> getSearchMyRecipe(RecipeSearchDTO recipeSearchDTO) throws SQLException;

	public List<ProductDTO> getProduct() throws SQLException;
	
	public List<ShoppingCartDTO> getShoppingCart(String id) throws SQLException;
	
	public int countSerchHashTag(String keyword) throws SQLException;
	
	public List<RecipeSearchDTO> getSerchHashTag(RecipeSearchDTO recipeSearchDTO) throws SQLException;
}
