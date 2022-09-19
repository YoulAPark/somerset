package com.ouneno.somerset.service.order.Impl;

import java.util.HashMap;
import java.util.List;

import com.ouneno.somerset.service.domain.Product;

// ProductService는 인터페이스의 역할을 하고 있다.
public interface ProductService {
	
	// 상품추가
	public void addProduct(Product product) throws Exception;
	
	// 상품조회
	public List<Product> getProduct(Product product) throws Exception;
	//public List<Product> listProduct() throws Exception;
	
	// 상품조회
	public Product getProductList(int prodNo) throws Exception;
	
	// 상품수정
	public void updateProduct(Product product) throws Exception;
	
	// 상품삭제
	public void deleteProduct(int prodNo) throws Exception;
}
