package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.dto.Recipe_ViewsDTO;
import net.developia.greenfood.dto.Recipe_likesDTO;


public interface Recipe_ViewsDAO {

	void InsertViewLog(Recipe_ViewsDTO rvdto)throws SQLException;

	List<Recipe_ViewsDTO> findAllrecipeViews(Recipe_ViewsDTO tmp2)throws SQLException;
}
