package com.ouneno.mybook.controller.admin;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.mybook.service.domain.Product;
import com.ouneno.mybook.service.order.Impl.ProductService;

@RestController
@RequestMapping("/admin/*")
public class AdminRestController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("json/listProduct")
	public HashMap<String, Object> listProduct(Product product) throws Exception{
		return null;
	}
	
//	 @RequestMapping("/listProduct")
//	 public HashMap<String, Object> listProduct(Product product) throws Exception{ 
//		 System.out.println("실행");
//		return null;
//	 }

}
