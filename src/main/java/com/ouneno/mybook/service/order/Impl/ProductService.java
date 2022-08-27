package com.ouneno.mybook.service.order.Impl;

import java.util.Map;

import com.ouneno.mybook.service.domain.Product;

// ProductService는 인터페이스의 역할을 하고 있다.
public interface ProductService {
	
	// public Product getProduct(String prodName) throws Exception;

	public Map<String,Object> getProduct(int prodNo) throws Exception;
}
