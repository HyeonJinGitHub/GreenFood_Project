package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.IngredientsDTO;
import net.developia.greenfood.dto.Recipe_IngredientsDTO;
import net.developia.greenfood.dto.Recipe_StepDTO;


public interface Recipe_StepDAO {

	void InsertStep(Recipe_StepDTO rsdto) throws SQLException;

	void updateStep(Recipe_StepDTO rsdto) throws SQLException;

}
