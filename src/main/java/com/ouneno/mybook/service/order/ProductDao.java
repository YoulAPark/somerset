package com.ouneno.mybook.service.order;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
// 메서드명만 지정해주면 Mapper랑 XML과 이어짐
public interface ProductDao {

	public Map<String,Object> getProduct(int prodNo) throws Exception;
	//public List<String> getProduct(int prodNo) throws Exception;
	// 안된다. ServiceImpl의 리턴값과 동일해야 함
	// xml의 namespace가 문제가 있었음
	// UserDao를 가르켜야했는데 VO를 가르키고 있었다.
	// @Repository와 @Mapping의 차이점을 알아야 함.
	
}
