package com.ouneno.mybook.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.condition.ProducesRequestCondition;

import com.ouneno.mybook.service.domain.Product;
import com.ouneno.mybook.service.order.Impl.ProductService;

@RestController
@RequestMapping("/admin/*")
public class AdminRestController {
	
	@Autowired
	private ProductService productService;
	
//	@RequestMapping("json/listProduct")
//	public HashMap<String, Object> listProduct(Product product) throws Exception{
//		return null;
//	}
	
//	@RequestMapping("json/listProduct")
//	public HashMap<String, Object> getProduct(Product product) throws Exception {
//		System.out.println("??");
//		return null;
//	}

//	 @RequestMapping("/listProduct")
//		public HashMap<String, Object> getProduct(Product product, Model model) throws Exception {	
//		 
//		 HashMap<String,Object> map = productService.getProduct(product);
//		 // => 인스턴스로 지정한 map을 sysout으로 출력시, ServiceImpl의 resultMap을 출력한다
//		 model.addAttribute("product", map.get("resultMap"));
//		 // => JSP에서 ${product}를 출력하게 되면 resultMap을 출력하게 된다.
//		 
//			return map;
//		}
	
//	@GetMapping(value="json/listProduct")
//	public HashMap<String, Object> getProduct(Product product, Model model) throws Exception {
//		System.out.println("GetMapping*********");
//		HashMap<String,Object> map = productService.getProduct(product);
//		//  => 인스턴스로 지정한 map을 sysout으로 출력시, ServiceImpl의 resultMap을 출력한다
//		 model.addAttribute("product", map.get("resultMap"));
//		// => JSP에서 ${product}를 출력하게 되면 resultMap을 출력하게 된다.
//		 System.out.println("GetMapping*********끝");
//		return map;
//	}
	
	// JSON사용시 @ResponseBody 사용?
	//			=> view를 생성해주는 것이 아니라, JSON or Object 형태로 데이터를 넘겨줌?
	/* 공부 : 	1. @RequestMapping
				2. @GetMapping
				3. @PostMapping
	*/
//	

	// 상품조회
	@RequestMapping(value = "getProductList/{prodNo}")
	public Product getProductList(@PathVariable("prodNo") int prodNo) throws Exception {
		return productService.getProductList(prodNo);
	}
	
	// 상품수정
	@PostMapping(value="/json/updateProduct")
	public boolean updateProduct(@RequestBody Product product) throws Exception {
		productService.updateProduct(product);
		return true;
	}
	
	@GetMapping(value="deleteProduct/{prodNo}")
	public boolean deleteProduct(@PathVariable("prodNo") int ProdNo) throws Exception{
		productService.deleteProduct(ProdNo);
		return true;
	}
	
	
}
