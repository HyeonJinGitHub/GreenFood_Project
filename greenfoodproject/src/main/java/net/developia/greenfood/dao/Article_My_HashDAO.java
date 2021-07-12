package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.List;

import net.developia.greenfood.dto.ArticleDTO;
import net.developia.greenfood.dto.Article_HashDTO;
import net.developia.greenfood.dto.Article_My_HashDTO;
import net.developia.greenfood.dto.RecipeDTO;


public interface Article_My_HashDAO {

	void insertMyHash(Article_My_HashDTO amhdto) throws SQLException;

	List<Article_My_HashDTO> findAllMyHash(Article_My_HashDTO amhdto) throws SQLException;

}
