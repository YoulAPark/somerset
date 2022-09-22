package com.ouneno.somerset.controller.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.somerset.service.order.Impl.ProductService;

@RestController
@RequestMapping("/order/*")
public class OrderRestController {

	@Autowired
	private ProductService productService;

}
