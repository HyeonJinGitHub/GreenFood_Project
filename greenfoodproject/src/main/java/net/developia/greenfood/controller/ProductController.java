package net.developia.greenfood.controller;

import java.util.ArrayList;
import com.google.gson.Gson;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.developia.greenfood.dto.CartDTO;
import net.developia.greenfood.dto.ProductDTO;
import net.developia.greenfood.dto.ProductImageDTO;
import net.developia.greenfood.dto.Recipe_StepDTO;
import net.developia.greenfood.service.AwsService;
import net.developia.greenfood.service.ProductService;

@Controller
@RequestMapping("/")
public class ProductController {
	@Autowired
	private ProductService productService;

	@Autowired
	private AwsService awsService;
	
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	int prodNo = 0;
	
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
				list.add(dto.getImage_path().replaceAll(" ", ""));
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
					String image_path = new_image_data.get(i).getImage_path().replaceAll(" ", "");
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
					String image_path = image_data.get(i).getImage_path().replaceAll(" ", "");
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
	
	@ResponseBody
	@RequestMapping(value = "/productInsert", method = RequestMethod.GET)
	public ModelAndView productInsert(HttpSession session) {
		System.out.println("product insert page start");
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("id").equals("admin"))
		{
			mav = new ModelAndView("productInsert");
		}
		else
		{
			mav = new ModelAndView("main");
		}
		
		return mav;
	}
	
	@PostMapping(value = "/postProduct", produces = "application/text; charset=utf8")
	public @ResponseBody String postProduct(HttpSession session,
			@RequestParam(value = "title") String title , //
			@RequestParam(value = "price") String price , //
			@RequestParam(value = "sku") String sku , //
			@RequestParam(value = "category") String category , //
			@RequestParam(value = "subscription") String subscription,
			@RequestParam(value = "detailsubscription") String detailsubscription) throws Exception {

		ProductDTO pdto = new ProductDTO();
		pdto.setName(title);
		pdto.setPrice(Integer.parseInt(price));
		pdto.setSku(sku);
		pdto.setCategory(category);
		pdto.setDescription(subscription);
		pdto.setDetail_description(detailsubscription);
		
		productService.postProduct(pdto);
		int pno = productService.findMyProduct(pdto);
		
		prodNo = pno;
		return Integer.toString(pno);
	
		
	}
	
	@RequestMapping(value="/removeProduct", method=RequestMethod.POST, produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String removeProduct(HttpSession session, @RequestParam(required = true) String no) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", session.getAttribute("id"));
		map.put("NO", no);
		try {
			productService.removeProduct(map);
			List<CartDTO> data = (List) map.get("CartList");
			String json = new Gson().toJson(data);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@PostMapping("/productAddcart")
	@ResponseBody
	public boolean productAddcart(HttpSession session, @RequestParam(required = true) String no,
			@RequestParam(required = true) String image) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", session.getAttribute("id"));
		map.put("NO", no);
		map.put("IMAGE", image);
		try {
			productService.productAddcart(map);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

		
	
	@PostMapping("/setimgfunc")
	public void setimgfunc(HttpSession session, HttpServletRequest request, HttpServletResponse response, @ModelAttribute MultipartFile[] product_image) throws Exception {
		
		int start = 1;
		for(MultipartFile multipartFile : product_image) {
			String profile_img = awsService.s3FileUploadStep(multipartFile, "product", Integer.toString(prodNo), Integer.toString(start));
			ProductImageDTO pidto = new ProductImageDTO();
			pidto.setImage_path(profile_img);
			pidto.setProduct_no(prodNo);
			productService.InsertProductImg(pidto);
		 }
		
	
		
	}
	

	
	@RequestMapping(value="/insertOrderlist", method=RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public boolean insertOrderlist(HttpSession session, @RequestParam(required = true) String order_date) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", session.getAttribute("id"));
		map.put("ORDER_DATE", order_date);
		System.out.println("order map : " + map.toString());
		try {
			productService.insertOrderlist(map);
			System.out.println("여기까지는 성공~");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("insertOrder 서비스 호출하는 것에서 에러");
		return false;
	}
}
