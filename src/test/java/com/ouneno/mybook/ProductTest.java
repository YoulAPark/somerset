package com.ouneno.mybook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.ouneno.somerset.service.order.Impl.ProductService;

@SpringBootTest
public class ProductTest {
	
	@Autowired ProductService productService;
	
}