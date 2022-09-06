package com.ouneno.mybook.service.order.Impl;

import java.util.HashMap;
import java.util.List;

import com.ouneno.mybook.service.domain.Product;

// ProductService는 인터페이스의 역할을 하고 있다.
public interface ProductService {
	
	public void addProduct(Product product) throws Exception;
	
	public HashMap<String, Object> getProduct(Product product) throws Exception;
	
	//public List<Product> listProduct() throws Exception;
	
	public Product getProductList(int prodNo) throws Exception;
}
