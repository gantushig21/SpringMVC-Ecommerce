package org.ecommerce.service;

import org.ecommerce.domain.Product;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ProductService {
    public Page<Product> getProducts(int page, int limit);
    public void create(Product product);
    public Product getProductById(String productId);
}
