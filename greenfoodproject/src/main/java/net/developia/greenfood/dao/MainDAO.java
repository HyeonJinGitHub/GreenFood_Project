package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.PagingVO;
import net.developia.greenfood.dto.RecipeSearchDTO;

@Repository
public interface MainDAO {
	public List<MemberDTO> getMember() throws SQLException;

	public List<RecipeSearchDTO> getRecipe(RecipeSearchDTO recipeSearchDTO) throws SQLException;
	
//	public List<RecipeSearchDTO> getRecipe(String keyword) throws SQLException;
	
	public int countRecipe(String keyword) throws SQLException;
}
