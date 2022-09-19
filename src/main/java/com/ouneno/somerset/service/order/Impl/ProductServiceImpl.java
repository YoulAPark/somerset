package com.ouneno.somerset.service.order.Impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ouneno.somerset.service.domain.Product;
import com.ouneno.somerset.service.order.ProductDao;

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
	public List<Product> getProduct(Product product) throws Exception {	
		List<Product> list = productDao.getProduct(product);
		return list;
	}
//	public List<Product> listProduct() throws Exception {
//		List<Product> test = productDao.listProduct();
//		return test;
//	}
	 
	// 상품 조회
	public Product getProductList(int prodNo) throws Exception {
		return productDao.getProductList(prodNo);
	}
	
	// 상품수정
	public void updateProduct(Product product) throws Exception {
		productDao.updateProduct(product);
	}
	
	// 상품삭제
	public void deleteProduct(int prodNo) throws Exception {
		productDao.deleteProduct(prodNo);
	}
}
