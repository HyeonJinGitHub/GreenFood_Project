package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;
import net.developia.greenfood.dto.RecipeDTO;


public interface RecipeDAO {
	List<RecipeDTO> getHashtagList() throws SQLException;
	List<RecipeDTO> getFoodcategoryList() throws SQLException;
}
