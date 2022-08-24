package com.ouneno.mybook.controller.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	// @Autowired
	// private OrderService orderService;
	
	// main.jsp => 주문 click => function "/order/addOrder" 으로 self.location 처리
	// 단순 네비게이션 역할
	@RequestMapping("addOrder")
	public String addOrder() throws Exception {
		return "order/addOrder";
	}
}
