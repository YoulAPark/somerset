package com.ouneno.somerset.controller.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.somerset.service.domain.Product;
import com.ouneno.somerset.service.order.Impl.ProductService;

@RestController
@RequestMapping("/order/*")
public class OrderRestController {
	
	@Autowired
	private ProductService productService;
	
}
