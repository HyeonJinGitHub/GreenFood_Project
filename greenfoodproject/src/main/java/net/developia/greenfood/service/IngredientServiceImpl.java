package net.developia.greenfood.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.IngredientDAO;
import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.SubIngredientDTO;

@Slf4j
@Service
public class IngredientServiceImpl implements IngredientService {

	@Autowired
	@Qualifier(value = "ingredientDAO")
	private IngredientDAO ingredientDAO;

	@Override
	public List<IngredientDTO> getingredientList() throws Exception {
		return ingredientDAO.getIngredientList();
	}

}
