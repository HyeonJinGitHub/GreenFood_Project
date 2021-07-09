package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.IngredientsDTO;


public interface IngredientsDAO {
	List<IngredientsDTO> findIngredients() throws SQLException;
	void insertIngredients(IngredientsDTO ingredientsDTO)throws SQLException;
	int findIngredientsOne(IngredientsDTO ingredientsDTO) throws SQLException;
	String findIngreName(IngredientsDTO idto) throws SQLException;
}
