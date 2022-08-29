package com.ouneno.mybook.service.order.Impl;

import java.util.Map;

import com.ouneno.mybook.service.domain.Product;

// ProductService는 인터페이스의 역할을 하고 있다.
public interface ProductService {
	
	public String getProduct(int prodNo) throws Exception;
	
	public void addProduct(Product product) throws Exception;
	
}
