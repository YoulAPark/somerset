package com.ouneno.mybook.service.order;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ouneno.mybook.service.domain.Product;

@Mapper
public interface ProductDao {

	// 상품추가
	public void addProduct(Product product) throws Exception;
	
	// 상품조회
	public List<HashMap<String, Object>> getProduct(Product product) throws Exception;
	
	// 
	public Product getProductList(int prodNo) throws Exception;
}
