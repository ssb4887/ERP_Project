package com.erp.dao;

import java.util.List;

import com.erp.vo.Product;

// user 제품
public interface ProductDAO {

	//제품리스트 불러오기
	public List<Product> getProductList() throws Exception;
	
	//제품 검색하기
	public List<Product> searchProduct(String pro_name) throws Exception;
	
	//제품 등록하기
	public void addProduct(Product product) throws Exception;
}
