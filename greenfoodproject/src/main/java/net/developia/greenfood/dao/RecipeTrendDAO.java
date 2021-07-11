package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.RecipeDTO;
import net.developia.greenfood.dto.RecipeTrendDTO;


public interface RecipeTrendDAO {
	int findMyScore(RecipeTrendDTO rtdto) throws SQLException;

	List<RecipeTrendDTO> findTop10Trend() throws SQLException;
}
