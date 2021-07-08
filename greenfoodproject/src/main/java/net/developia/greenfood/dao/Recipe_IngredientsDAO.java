package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;


public interface Recipe_IngredientsDAO {

	void InsertRecipe_Ingredients(Recipe_IngredientsDTO ridto) throws SQLException;

}
