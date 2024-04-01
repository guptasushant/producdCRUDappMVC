package com.product.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.product.model.Product;

@Service
public class ProductDaoimpl implements ProductDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// create or update 
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}

	// read all
	public List<Product> getAllProduct() {
		List<Product> all = this.hibernateTemplate.loadAll(Product.class);
		return all;
	}

	// delete
	@Transactional
	public void deleteProduct(int pid) {

		Product product = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(product);
	}

	// read or fetch
	public Product getProduct(int pid) {
		Product p = this.hibernateTemplate.get(Product.class, pid);
		return p;
	}

}
