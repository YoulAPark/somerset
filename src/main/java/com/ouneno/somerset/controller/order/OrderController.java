package com.ouneno.somerset.controller.order;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.somerset.service.domain.Product;
import com.ouneno.somerset.service.order.Impl.ProductService;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	 @Autowired
	 private ProductService productService;
	 // OrderController 클래스는 productService 클래스의 의존성을 가진다
	 
	 @RequestMapping("/listProduct")
	 public String getProduct(Product product, Model model) throws Exception {
		 HashMap<String,Object> map = productService.getProduct(product); // => 인스턴스로 지정한 map을 sysout으로 출력시, ServiceImpl의 resultMap을 출력한다	 
		 model.addAttribute("product", map);
		 return "order/listProduct";
	 }
	
	 // main.jsp => 주문 click => function "/order/addOrder" 으로 self.location 처리
	// 단순 네비게이션 역할
//	@RequestMapping("addOrder")
//	public String addOrder(@RequestParam("prodNo") int prodNo, Model model, Product product) throws Exception {
//		productService.getProduct(prodNo);
//		model.addAttribute("product", product);
//		return "order/addOrder";
//	}
	
//	@RequestMapping("getProduct")
//	public String getProduct(@ModelAttribute("product") Product product
//							, Model model) throws Exception {
//		
//		System.out.println("getProduct()");
//		model.addAttribute("product", product); // medel.addAttribute가 JSP로 쏴주는거
//		System.out.println(product);
//		return "order/addOrder";
//	}
	 
//	@RequestMapping("getProduct")
//	public String getProduct(@ModelAttribute("product") Product product, Model model) throws Exception {
//		
//			System.out.println("OrderController의 getProduct() 메서드 시작");
//			System.out.println("product 가져오는지 확인하기 : "+product);
//
//		productService.getProduct(2);
//		
//		// HashMap : key,value에 따른 순서 없음		
//		Map<String,Object> map = new HashMap<String,Object>();	
//			
//			System.out.println("getProduct() 메서드 map 확인 : "+map);
//			System.out.println("Map 확인하기 : "+map);
//		
//		model.addAttribute("product", map);
//		
//		return "order/addOrder";
//	}
							
}
