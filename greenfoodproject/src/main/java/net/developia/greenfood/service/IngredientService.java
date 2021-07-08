package net.developia.greenfood.service;

import java.util.List;

import net.developia.greenfood.dto.MainIngredientDTO;
import net.developia.greenfood.dto.SubIngredientDTO;

public interface IngredientService {

	List<MainIngredientDTO> getMainIngredientList() throws Exception;

	List<SubIngredientDTO> getSubIngredientList(int mainIngredientNo) throws Exception;
}
