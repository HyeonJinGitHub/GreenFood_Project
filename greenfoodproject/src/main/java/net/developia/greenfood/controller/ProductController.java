package net.developia.greenfood.controller;

import java.util.ArrayList;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.developia.greenfood.dto.CartDTO;
import net.developia.greenfood.dto.ProductDTO;
import net.developia.greenfood.dto.ProductImageDTO;
import net.developia.greenfood.service.ProductService;

@Controller
@RequestMapping("/")
public class ProductController {
	@Autowired
	private ProductService productService;

	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@GetMapping("/productDetail")
	public ModelAndView move_productDetail_get(@RequestParam(required = true) String no) {
		ModelAndView mav = new ModelAndView("productdetail");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("NO", no);
		HashMap<String, Object> product_image_map = new HashMap<String, Object>();
		try {
			productService.selectProductDetail(map);
			List<ProductDTO> data = (List) map.get("ProductDetailList");
			ProductDTO productDTO = data.get(0);
			mav.addObject("productDTO", productDTO);
			productService.selectImage(map);
			List<ProductImageDTO> image_data = (List) map.get("ProductImageList");
			List<String> list = new ArrayList<String>();
			for (ProductImageDTO dto : image_data) {
				list.add(dto.getImage_path());
			}
			mav.addObject("productDTO", productDTO);
			mav.addObject("images", list);

			map.put("CATEGORY", productDTO.getCategory());
			productService.selectProductByCategory(map);
			List<ProductDTO> category_data = (List) map.get("ProductDetailByCategoryList");

			for (ProductDTO dto : category_data) {
				long product_no = dto.getNo();
				List<String> new_list = new ArrayList<String>();
				HashMap<String, Object> new_map = new HashMap<String, Object>();
				new_map.put("NO", product_no);
				productService.selectImage(new_map);
				List<ProductImageDTO> new_image_data = (List) new_map.get("ProductImageList");
				new_list.add(Long.toString(dto.getNo()));
				new_list.add(dto.getName());
				new_list.add(Long.toString(dto.getPrice()));
				new_list.add(dto.getDescription());
				new_list.add(dto.getDetail_description());
				new_list.add(dto.getCategory());
				new_list.add(dto.getSku());
				for (int i = 0; i < 2; i++) {
					String image_path = new_image_data.get(i).getImage_path();
					new_list.add(image_path);
				}
				product_image_map.put(Long.toString(dto.getNo()), new_list);
			}
			mav.addObject("items", product_image_map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@GetMapping("/product")
	public ModelAndView move_product_get() {
		ModelAndView mav = new ModelAndView("product");
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			HashMap<String, Object> product_image_map = new HashMap<String, Object>();
			productService.selectProduct(map);

			List<ProductDTO> data = (List) map.get("ProductList");
			for (ProductDTO dto : data) {
				long product_no = dto.getNo();
				List<String> list = new ArrayList<String>();
				HashMap<String, Object> new_map = new HashMap<String, Object>();
				new_map.put("NO", product_no);
				productService.selectImage(new_map);
				List<ProductImageDTO> image_data = (List) new_map.get("ProductImageList");
				list.add(Long.toString(dto.getNo()));
				list.add(dto.getName());
				list.add(Long.toString(dto.getPrice()));
				list.add(dto.getDescription());
				list.add(dto.getDetail_description());
				list.add(dto.getCategory());
				list.add(dto.getSku());
				for (int i = 0; i < 2; i++) {
					String image_path = image_data.get(i).getImage_path();
					list.add(image_path);
				}
				product_image_map.put(Long.toString(dto.getNo()), list);
			}
			mav.addObject("items", product_image_map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
	}

	@GetMapping("/shoppingcart")
	public ModelAndView move_shoppingcart(HttpSession session) {
		ModelAndView mav = new ModelAndView("shoppingcart");
		HashMap<String, Object> map = new HashMap<String, Object>();
		String id = session.getAttribute("id").toString();
		map.put("ID", id);
		try {
			productService.selectcart(map);
			HashMap<String, Object> cart_map = new HashMap<String, Object>();
			List<CartDTO> data = (List) map.get("CartList");
			for (CartDTO dto : data) {
				long product_no = dto.getNo();
				cart_map.put(Long.toString(product_no), dto);
			}
			mav.addObject("items", cart_map);
			System.out.println(mav.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@PostMapping("/addCart")
	@ResponseBody
	public boolean addCart(HttpSession session, @RequestParam(required = true) String no,
			@RequestParam(required = true) String name, @RequestParam(required = true) int price,
			@RequestParam(required = true) int cnt, @RequestParam(required = true) String image) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", session.getAttribute("id"));
		map.put("NO", no);
		map.put("NAME", name);
		map.put("PRICE", price);
		map.put("CNT", cnt);
		map.put("IMAGE", image);
		try {
			productService.addCart(map);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@RequestMapping(value="/quantityUpdate", method=RequestMethod.POST, produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String quantityUpdate(HttpSession session, 
			@RequestParam(required = true) String no, 
			@RequestParam(required = true) int cnt) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", session.getAttribute("id"));
		map.put("NO", no);
		map.put("CNT", cnt);
		try {
			productService.quantityUpdate(map);
			List<CartDTO> data = (List) map.get("CartList");
			String json = new Gson().toJson(data);
			System.out.println("업데이트 후 : " + json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
