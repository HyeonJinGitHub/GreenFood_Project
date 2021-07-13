package net.developia.greenfood.dao;

import java.sql.SQLException;
import java.util.HashMap;

import net.developia.greenfood.dto.ProductDTO;
import net.developia.greenfood.dto.ProductImageDTO;

public interface ProductImageDAO {

	void InsertProductImg(ProductImageDTO pidto) throws SQLException;

}
