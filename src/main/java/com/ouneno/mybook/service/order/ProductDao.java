package com.ouneno.mybook.service.order;

import org.apache.ibatis.annotations.Mapper;

import com.ouneno.mybook.service.domain.Product;

@Mapper
public interface ProductDao {
	
	public Product getProduct(int prodNo) throws Exception;

}
