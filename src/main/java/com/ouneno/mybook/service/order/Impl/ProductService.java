package com.ouneno.mybook.service.order.Impl;

import java.util.HashMap;
import java.util.List;

import com.ouneno.mybook.service.domain.Product;

// ProductService는 인터페이스의 역할을 하고 있다.
public interface ProductService {
	
	// 상품추가
	public void addProduct(Product product) throws Exception;
	
	// 상품조회
	public HashMap<String, Object> getProduct(Product product) throws Exception;
	//public List<Product> listProduct() throws Exception;
	
	// 상품조회
	public Product getProductList(int prodNo) throws Exception;
	
	// 상품수정
	public void updateProduct(int prodNo) throws Exception;
}
