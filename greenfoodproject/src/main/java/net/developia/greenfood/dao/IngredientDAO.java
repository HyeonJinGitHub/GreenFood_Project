package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.IngredientSearchRecipeDTO;

public interface IngredientDAO {

	public List<IngredientDTO> getIngredientList() throws SQLException;

	public List<IngredientSearchRecipeDTO> getRecipeList(Map<String, Object> hm) throws SQLException;

	public List<IngredientSearchRecipeDTO> getAllRecipeList() throws SQLException;

}
