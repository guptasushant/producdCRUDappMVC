package com.product.dao;

import java.util.List;

import com.product.model.Product;

public interface ProductDao {
	
	public void createProduct(Product product);

	public List<Product> getAllProduct();

	public void deleteProduct(int pid);

	public Product getProduct(int pid);
}
