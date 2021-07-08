package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.MainIngredientDTO;
import net.developia.greenfood.dto.SubIngredientDTO;

public interface IngredientDAO {

	public List<IngredientDTO> getIngredientList() throws SQLException;

}
