package com.ouneno.mybook.service.order;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDao {

	public Map<String,Object> getProduct(int prodNo) throws Exception;	
	// ServiceImpl의 리턴값과 동일해야 함
	
}
