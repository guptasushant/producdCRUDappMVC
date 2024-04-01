package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.ProductDao;
import com.product.model.Product;

@Service
public class ProductService {
	@Autowired
	private ProductDao productDao;

	public void createProduct(Product product) {
		try {
			productDao.createProduct(product);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public List<Product> getallProducts() {
		List<Product> list = productDao.getAllProduct();
		return list;
	}

	public void deleteProduct(int pid) {
		try {
			productDao.deleteProduct(pid);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public Product getproduct(int pid) {
		return this.productDao.getProduct(pid);
	}
}
