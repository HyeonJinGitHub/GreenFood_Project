package net.developia.greenfood.service;

import java.util.List;

import net.developia.greenfood.dto.IngredientDTO;
import net.developia.greenfood.dto.MainIngredientDTO;
import net.developia.greenfood.dto.SubIngredientDTO;

public interface IngredientService {

	List<IngredientDTO> getingredientList() throws Exception;
}
