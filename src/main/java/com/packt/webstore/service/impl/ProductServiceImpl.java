package com.packt.webstore.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.webstore.dao.ProductDAO;
import com.packt.webstore.domain.Product;
import com.packt.webstore.service.OrderService;
import com.packt.webstore.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productRepository;

	public List <Product> getAllProducts() {
		return productRepository.getAllProducts();
	}
	
	public Product getProductById(String productId) {
		return productRepository.getProductById(productId);
	}
	
	public List<Product> getProductsByCategory(String category) {
		return productRepository.getProductsByCategory(category);
	}

	public void save(Product product) {
		 productRepository.save(product);
		}

}
