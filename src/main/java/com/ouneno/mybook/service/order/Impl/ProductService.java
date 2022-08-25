package com.ouneno.mybook.service.order.Impl;

import com.ouneno.mybook.service.domain.Product;

// ProductService는 인터페이스의 역할을 하고 있다.
public interface ProductService {
	
	// public Product getProduct(String prodName) throws Exception;

	public Product getProduct(int prodNo) throws Exception;
}
