package com.ouneno.mybook.service.order.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ouneno.mybook.service.domain.Product;
import com.ouneno.mybook.service.order.ProductDao;

// 인터페이스인 ProductService를 implements로 가져오고있다.
// 혹시나 다른 구현체(ex.ProductServiceImpl2)를 만들예정이라면 @Service 어노테이션을 제거해야한다.
@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;
	
	// 상품추가	
	public void addProduct(Product product) throws Exception {
		System.out.println("ProductService 거쳐 SeviceImpl의 addProduct() 진입");
		productDao.addProduct(product);
	}
	
	// 상품조회
	public HashMap<String, Object> getProduct(Product product) throws Exception {	
		
		HashMap<String,Object> map = new HashMap<String,Object>();	

		map.put("product", productDao.getProduct(product)); // resultMap이라는 이름에 Dao.getProduct()를 담음
		
		System.out.println("<<<<<Impl>>>>> map : "+map);
		System.out.println("<<<<<Impl>>>>> map.get() : "+map.get("resultMap"));
		
		return map;
	}
}
