package net.developia.greenfood.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.developia.greenfood.dao.ProductDAO;
import net.developia.greenfood.dao.ProductImageDAO;
import net.developia.greenfood.dto.ProductDTO;
import net.developia.greenfood.dto.ProductImageDTO;
import net.developia.greenfood.dto.CartDTO;

@Slf4j
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ProductImageDAO productimageDAO;

	@Override
	public void selectProduct(HashMap<String, Object> map) throws Exception {
		try {
			productDAO.selectProduct(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}

	}

	@Override
	public void selectImage(HashMap<String, Object> map) throws Exception {
		try {
			productDAO.selectImage(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void selectProductDetail(HashMap<String, Object> map) throws Exception {
		try {
			productDAO.selectProductDetail(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void selectProductByCategory(HashMap<String, Object> map) throws Exception {
		try {
			productDAO.selectProductByCategory(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void addCart(HashMap<String, Object> map) throws Exception {
		try {
			productDAO.addCart(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void selectcart(HashMap<String, Object> map) throws Exception {
		try {
			productDAO.selectcart(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

	@Override
	public void quantityUpdate(HashMap<String, Object> map) throws Exception {
		try {
			productDAO.quantityUpdate(map);
		} catch (Exception e) {
			log.info(e.getMessage());
			throw e;
		}
	}

}
