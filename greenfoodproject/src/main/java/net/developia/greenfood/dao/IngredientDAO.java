package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.RecipeDTO;

public interface IngredientDAO {

	public List<IngredientDTO> getIngredientList() throws SQLException;

	public List<RecipeDTO> getRecipeList(Map<String, Object> hm) throws SQLException;

}
