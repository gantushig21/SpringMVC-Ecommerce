package org.ecommerce.service.impl;

import org.ecommerce.domain.Product;
import org.ecommerce.repository.ProductRepository;
import org.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;

    @Override
    public Page<Product> getProducts(int page, int limit) {
        Pageable pageable = PageRequest.of(page, limit);

        return productRepository.findAll(pageable);
    }

    @Override
    public Product getProductById(String productId) {
        Optional<Product> product = productRepository.findById(productId);

        return product.isPresent() ? product.get() : null;
    }

    @Override
    public void create(Product product) {
        product.setCreatedDate(LocalDateTime.now());

        productRepository.save(product);
    }
}
