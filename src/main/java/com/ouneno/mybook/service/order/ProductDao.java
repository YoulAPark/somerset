package com.ouneno.mybook.service.order;

import org.apache.ibatis.annotations.Mapper;

import com.ouneno.mybook.service.domain.Product;

@Mapper
public interface ProductDao {

	public String getProduct(int prodNo) throws Exception;	
	// ServiceImpl의 리턴값과 동일해야 함
	
	// 상품추가
	public void addProduct(Product product) throws Exception;
	
	public void getProductTest() throws Exception;
}
