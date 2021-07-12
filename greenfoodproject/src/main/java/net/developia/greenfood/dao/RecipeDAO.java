package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;
import net.developia.greenfood.dto.RecipeDTO;


public interface RecipeDAO {
	List<RecipeDTO> getHashtagList() throws SQLException;
	List<RecipeDTO> getFoodcategoryList() throws SQLException;
	int findCategory(RecipeDTO rdto) throws SQLException;
	int findHashtag(RecipeDTO rtmp) throws SQLException;
	int findHashtagCnt(RecipeDTO rtmp) throws SQLException;
	String findHashName(RecipeDTO rdto) throws SQLException;
}
