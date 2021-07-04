package net.developia.greenfood.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.developia.greenfood.dao.RecipeDAO;
import net.developia.greenfood.dto.RecipeDTO;


@Service
public class RecipeServiceImpl implements RecipeService {

	@Autowired
	private RecipeDAO recipeDAO;

	@Override
	public List<RecipeDTO> getHashtagList() throws Exception {
		return recipeDAO.getHashtagList();
	}

}
