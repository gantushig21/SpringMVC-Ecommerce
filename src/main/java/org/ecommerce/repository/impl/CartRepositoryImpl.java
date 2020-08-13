package org.ecommerce.repository.impl;

import org.ecommerce.domain.Cart;
import org.ecommerce.repository.CartRepository;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CartRepositoryImpl implements CartRepository {
    private Map<String, Cart> listOfCarts;

    public CartRepositoryImpl() {
        listOfCarts = new HashMap<>();
    }

    @Override
    public Cart create(Cart cart) {
        if(listOfCarts.keySet().contains(cart.getId())) {
            throw new IllegalArgumentException(String.format("Can not create a cart. A cart with the give id (%) already exist", cart.getId()));
        }

        listOfCarts.put(cart.getId(), cart);
        return cart;
    }

    @Override
    public Cart read(String cartId) {
        return listOfCarts.get(cartId);
    }

    @Override
    public void update(String cartId, Cart cart) {
        if(!listOfCarts.keySet().contains(cartId)) {
            throw new IllegalArgumentException(String.format("Can not update cart. The cart with the give id (%) does not does not exist", cartId));
        }

        listOfCarts.put(cartId, cart);
    }

    @Override
    public void delete(String cartId) {
        if(!listOfCarts.keySet().contains(cartId)) {
            throw new IllegalArgumentException(String.format("Can not delete cart. The cart with the give id (%) does not does not exist", cartId));
        }

        listOfCarts.remove(cartId);
    }
}
