package net.developia.greenfood.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.MainDAO;
import net.developia.greenfood.dto.MemberDTO;
import net.developia.greenfood.dto.RecipeSearchDTO;

@Service
@Slf4j
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDAO mainDAO;
	
	@Override
	public void selectReciper() throws Exception {
		// TODO Auto-generated method stub
	}

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
	public List<RecipeSearchDTO> getRecipe(String keyword) throws Exception {
		
		List<RecipeSearchDTO> list;
		try {
			list = mainDAO.getRecipe(keyword);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
		
		return list;
	}

}
