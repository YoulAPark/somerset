package com.ouneno.mybook.service.order.Impl;

import java.util.HashMap;
import java.util.List;

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

//	public List<Product> getProduct(int prodNo) throws Exception {
//		System.out.println("ProductService의 getProduct()");
//		System.out.println("ProductService prodNo : "+prodNo);	
//		return productDao.getProduct(prodNo);
//	}

	public void addProduct(Product product) throws Exception {
		System.out.println("ProductService 거쳐 SeviceImpl의 addProduct() 진입");
		productDao.addProduct(product);
	}
	
	public HashMap<String, Object> getProduct(Product product) throws Exception {
		
		HashMap<String,Object> map = new HashMap<String,Object>();	
		System.out.println("-------------->2. HashMap 지정 : "+map);
		map.put("resultMap", productDao.getProduct(product));
		System.out.println("-------------->3. HashMap 지정 후 Dao에서 가져옴 : "+map);
		System.out.println("-------------->4. map.get(resultMap)가져와보기 : "+map.get("resultMap"));

	
		

//		HashMap<String,Object> map = new HashMap<String, Object>();
//		map.put("product", productDao.getProduct(product));
//		System.out.println(map);
		
		return map;
	}
}
