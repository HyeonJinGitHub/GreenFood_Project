package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.MainIngredientDTO;
import net.developia.greenfood.dto.SubIngredientDTO;

public interface IngredientDAO {
	public List<MainIngredientDTO> getMainIngredientList() throws SQLException;

	public List<SubIngredientDTO> getSubIngredientList(int mainIngredientNo) throws SQLException;
}
