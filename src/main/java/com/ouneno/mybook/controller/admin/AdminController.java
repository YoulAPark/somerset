package com.ouneno.mybook.controller.admin;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	 
	 @RequestMapping("/listProduct")
	 public HashMap<String, Object> listProduct(Product product) throws Exception{ 
		 System.out.println("실행");
		return null;
	 }
}