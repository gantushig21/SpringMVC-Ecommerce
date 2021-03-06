package org.ecommerce.service;

import org.ecommerce.domain.Cart;

public interface CartService {
    public Cart create(Cart cart);
    public Cart read(String cartId);
    public void update(String cartId, Cart cart);
    public void delete(String cartId);
}
