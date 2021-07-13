package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.RecipeDTO;


public interface ArticleDAO {
	void insertRecipe(ArticleDTO adto) throws SQLException;
	int findRecipe(ArticleDTO adto) throws SQLException;
	void updateRecipeThumbnail(ArticleDTO adto) throws SQLException;
	void updateRecipeViedofile(ArticleDTO adto) throws SQLException;
	ArticleDTO findRecipeNo(ArticleDTO adtotmp) throws SQLException;
	void InsertMyLikeToRecipe(ArticleDTO adto) throws SQLException;
	void DelMyLikeToRecipe(ArticleDTO adto) throws SQLException;
	int countMyLikes(ArticleDTO adto) throws SQLException;
	void UpdateMyView(ArticleDTO adto) throws SQLException;
	int chkMyView(ArticleDTO adto) throws SQLException;
	int findHowMany(ArticleDTO adto) throws SQLException;
	List<ArticleDTO> findAllrecipe() throws SQLException;
	List<ArticleDTO> findRecipeById(ArticleDTO adto) throws SQLException;
	int countMyRecipe(ArticleDTO adto) throws SQLException;
}
