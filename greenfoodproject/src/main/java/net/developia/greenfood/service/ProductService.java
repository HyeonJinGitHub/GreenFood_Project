package net.developia.greenfood.service;

import java.util.HashMap;

public interface ProductService {

	void selectProduct(HashMap<String, Object> map) throws Exception;

	void selectImage(HashMap<String, Object> map) throws Exception;

	void selectProductDetail(HashMap<String, Object> map) throws Exception;

	void selectProductByCategory(HashMap<String, Object> map) throws Exception;

	void addCart(HashMap<String, Object> map) throws Exception;

	void selectcart(HashMap<String, Object> map) throws Exception;

	void quantityUpdate(HashMap<String, Object> map) throws Exception;

	void removeProduct(HashMap<String, Object> map) throws Exception;

	void productAddcart(HashMap<String, Object> map) throws Exception;

}
