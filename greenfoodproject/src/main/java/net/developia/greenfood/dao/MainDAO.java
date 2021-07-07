package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;

public interface MainDAO {
	public List<MemberDTO> getMember() throws SQLException;

	public List<RecipeSearchDTO> getRecipe(String keyword) throws SQLException;
}
