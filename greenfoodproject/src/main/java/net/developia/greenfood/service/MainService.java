package net.developia.greenfood.service;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.PagingVO;
import net.developia.greenfood.dto.RecipeSearchDTO;

public interface MainService {
//	public void selectReciper() throws Exception;

	public List<MemberDTO> getMember() throws Exception;
	
	public List<RecipeSearchDTO> getRecipe(RecipeSearchDTO recipeSearchDTO) throws Exception;
	
//	public List<RecipeSearchDTO> getRecipe2(String keyword) throws Exception;
	
	public int countRecipe(String keyword) throws Exception;
}
