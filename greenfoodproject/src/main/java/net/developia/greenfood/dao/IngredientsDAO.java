package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.IngredientsDTO;


public interface IngredientsDAO {
	List<IngredientsDTO> findIngredients() throws SQLException;
	void insertIngredients(String name)throws SQLException;
	int findIngredientsOne(String iga) throws SQLException;
}
