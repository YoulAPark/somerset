package com.ouneno.somerset.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.interceptor.LoggingCacheErrorHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ouneno.somerset.service.domain.Product;
import com.ouneno.somerset.service.order.Impl.ProductService;

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
	 
	 @RequestMapping("/listProduct")
	 public String getProduct(Product product, Model model) throws Exception {
		 HashMap<String,Object> map = productService.getProduct(product); // => 인스턴스로 지정한 map을 sysout으로 출력시, ServiceImpl의 resultMap을 출력한다	 
		 model.addAttribute("product", map);
		 return "admin/listProduct";
	 }
	
	 // listProduct ModelAndView로 사용시
//	 @RequestMapping("/listProduct2")
//	 public ModelAndView getProduct2() throws Exception {
//		 ModelAndView mv = new ModelAndView();
//		 mv.addObject("product", productService.getProduct(null));
//		 mv.setViewName("admin/listProduct");
//		 return mv;
//	 }
	 
//	 // Navigation
//	 @RequestMapping(value="updateProduct/{prodNo}")
//	 public String updateProduct(@RequestParam("prodNo") int prodNo, Model model) throws Exception {
//		 System.out.println("prodNo***** : "+prodNo);
//		 System.out.println("updateProduct Controller 진입완료");
//		 return "admin/updateProduct";
//	 }
	 
	
}
