package com.ouneno.mybook.controller.admin;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.interceptor.LoggingCacheErrorHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ouneno.mybook.service.domain.Product;
import com.ouneno.mybook.service.order.Impl.ProductService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	 @Autowired
	 private ProductService productService;
	 
	 @RequestMapping("/adminMain")
	 public String adminMain() throws Exception {
		 return "admin/adminMain";
	 }
	 
	 @RequestMapping("/addProductPage")
	 public String addProductPage() throws Exception {
		 return "admin/addProductPage";
	 }
	 
	 @RequestMapping("/addProduct")
	 public String addProduct(Product product) throws Exception {
		 productService.addProduct(product);
		 return "redirect:addProductPage";
	 }
	 
//	 @RequestMapping("/listProduct")
//		public HashMap<String, Object> getProduct(Product product, Model model,
//				@ModelAttribute("prodNo") int prodNo,
//				@ModelAttribute("prodName") String prodName, 
//				@ModelAttribute("prodDetail") String prodDetail,
//				@ModelAttribute("prodPrice") String prodPrice) throws Exception {	
//
//		 HashMap<String,Object> map = productService.getProduct(product); // => 인스턴스로 지정한 map을 sysout으로 출력시, ServiceImpl의 resultMap을 출력한다	 
//		 model.addAttribute("product", map.get("resultMap"));  // => JSP에서 ${product}를 출력하게 되면 resultMap을 출력하게 된다.
//		 model.addAttribute("prodNo", prodNo);
//		 model.addAttribute("prodName", prodName);
//		 model.addAttribute("prodDetail", prodDetail);
//		 model.addAttribute("prodPrice", prodPrice);
//		 return map;
//		}
	 
	 @RequestMapping("/listProduct")
	 	public String getProduct( Product product, Model model) throws Exception {

		 HashMap<String,Object> map = productService.getProduct(product); // => 인스턴스로 지정한 map을 sysout으로 출력시, ServiceImpl의 resultMap을 출력한다	 
		 model.addAttribute("product", map);  // => JSP에서 ${product}를 출력하게 되면 resultMap을 출력하게 된다.

		 
		 return "/admin/listProduct";
	 }
}
