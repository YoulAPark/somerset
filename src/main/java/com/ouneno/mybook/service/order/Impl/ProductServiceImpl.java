package com.ouneno.mybook.service.order.Impl;

import java.util.Map;

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

	public Map<String,Object> getProduct(int prodNo) throws Exception {
		System.out.println("확인");
		System.out.println(prodNo);
		return productDao.getProduct(prodNo);
	}
}
