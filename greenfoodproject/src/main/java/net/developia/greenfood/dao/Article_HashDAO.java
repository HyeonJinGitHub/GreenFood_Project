package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.RecipeDTO;


public interface Article_HashDAO {

	void insertHash_Recipe(Article_HashDTO ahdto) throws SQLException;

	List<Article_HashDTO> findAllHash(Article_HashDTO ahdto) throws SQLException;
}
