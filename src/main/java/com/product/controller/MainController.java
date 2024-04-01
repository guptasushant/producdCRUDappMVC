package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.product.model.Product;
import com.product.service.ProductService;

@Controller
public class MainController {

	@Autowired
	ProductService productservice;

	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = productservice.getallProducts();
		m.addAttribute("getproducts", products);
		return "index";
	}

// add product form 
	@RequestMapping("/addproduct")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add product ");
		return "add_product_form";
	}

	@RequestMapping(value = "/handleform", method = RequestMethod.POST)
	public RedirectView handlerform(RedirectView view, @ModelAttribute Product product, HttpServletRequest req) {
		System.out.println(product);

		productservice.createProduct(product);

		view.setUrl(req.getContextPath() + "/");
		return view;
	}

	@RequestMapping("/delete-product/{id}")
	public RedirectView deleteProduct(@PathVariable("id") int id, HttpServletRequest req, RedirectView view) {
		productservice.deleteProduct(id);
		view.setUrl(req.getContextPath() + "/");
		return view;
	}

	@RequestMapping("/update-product/{id}")
	public String updateForm(@PathVariable("id") int id, Model m) {
		Product product = this.productservice.getproduct(id);
		m.addAttribute("product", product);
		return "update";
	}
}
