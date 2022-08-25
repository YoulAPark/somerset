package com.ouneno.mybook.controller.order;

import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ouneno.mybook.service.domain.Product;
import com.ouneno.mybook.service.order.Impl.ProductService;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	 @Autowired
	 private ProductService productService;
	
	// main.jsp => 주문 click => function "/order/addOrder" 으로 self.location 처리
	// 단순 네비게이션 역할
//	@RequestMapping("addOrder")
//	public String addOrder(@RequestParam("prodNo") int prodNo, Model model, Product product) throws Exception {
//		productService.getProduct(prodNo);
//		model.addAttribute("product", product);
//		return "order/addOrder";
//	}
	
	@RequestMapping("getProduct")
	public String getProduct(@ModelAttribute("product") Product product
							, Model model) throws Exception {
		
		System.out.println("getProduct()");
		model.addAttribute("product", product);
		System.out.println(product.getProdNo());
		product.setProdNo(1);
		return "order/addOrder";
	}
							
}
