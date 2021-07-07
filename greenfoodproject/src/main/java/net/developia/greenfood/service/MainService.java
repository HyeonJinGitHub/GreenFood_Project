package net.developia.greenfood.service;

import java.util.HashMap;
import java.util.List;

import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;

public interface MainService {
	public void selectReciper() throws Exception;

	public List<MemberDTO> getMember() throws Exception;
	
	public List<RecipeSearchDTO> getRecipe(String keyword) throws Exception;
}
