package com.ouneno.mybook.service.order.Impl;

import java.util.HashMap;

import com.ouneno.mybook.service.domain.Product;

// ProductService는 인터페이스의 역할을 하고 있다.
public interface ProductService {
	
	public void addProduct(Product product) throws Exception;
	
	public HashMap<String, Object> getProduct(Product product) throws Exception;
}
