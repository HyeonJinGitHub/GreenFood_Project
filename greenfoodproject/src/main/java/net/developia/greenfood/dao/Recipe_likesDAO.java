package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.dto.Recipe_likesDTO;


public interface Recipe_likesDAO {

	int chkMyLikeRecipe(Recipe_likesDTO rldto) throws SQLException;

	void InsertMyLikeRecipe(Recipe_likesDTO rldto) throws SQLException;

	void DelMyLikeRecipe(Recipe_likesDTO rldto) throws SQLException;

}
