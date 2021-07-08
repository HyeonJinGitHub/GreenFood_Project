package net.developia.greenfood.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.MainDAO;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;

@Service
@Slf4j
public class MainServiceImpl  implements MainService{
	
	@Autowired
	MainDAO mainDAO;

	@Override
	public List<MemberDTO> getMember() throws Exception {
		List<MemberDTO> list;
		try {
			list = mainDAO.getMember();
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		
		return list;
	}

	@Override
	public List<RecipeSearchDTO> getRecipe(RecipeSearchDTO recipeSearchDTO) throws Exception {
		
		List<RecipeSearchDTO> list;
		try {
			list = mainDAO.getRecipe(recipeSearchDTO);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		
		return list;
	}

	@Override
	public int countRecipe(String keyword) throws Exception {
		int cnt = mainDAO.countRecipe(keyword);
		return cnt;
	}

//	@Override
//	public List<RecipeSearchDTO> getRecipe2(String keyword) throws Exception {
//		List<RecipeSearchDTO> list;
//		try {
//			list = mainDAO.getRecipe(keyword);
//		} catch (Exception e) {
//			log.info(e.getMessage());
//			throw e;
//		}
//		
//		return list;
//	}

}
