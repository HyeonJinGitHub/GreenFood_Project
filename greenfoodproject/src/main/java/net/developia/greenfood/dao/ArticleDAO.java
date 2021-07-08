package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.RecipeDTO;


public interface ArticleDAO {
	void insertRecipe(ArticleDTO adto) throws SQLException;
	int findRecipe(ArticleDTO adto) throws SQLException;
	void updateRecipeThumbnail(ArticleDTO adto) throws SQLException;
}
