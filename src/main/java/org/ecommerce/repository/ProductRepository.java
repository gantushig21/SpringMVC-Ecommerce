package org.ecommerce.repository;

import org.ecommerce.domain.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ProductRepository extends PagingAndSortingRepository<Product, String> {
    @Override
    Page<Product> findAll(Pageable pageable);
}
