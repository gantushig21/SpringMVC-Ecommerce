package org.ecommerce.controller;

import org.ecommerce.domain.Cart;
import org.ecommerce.domain.CartItem;
import org.ecommerce.domain.Product;
import org.ecommerce.service.CartService;
import org.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("rest/cart")
public class CartRestController {
    @Autowired
    private CartService cartService;

    @Autowired
    private ProductService productService;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public Cart create(@RequestBody Cart cart) {
        return cartService.create(cart);
    }

    @RequestMapping(value = "/add/{productId}", method = RequestMethod.PATCH)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem(@PathVariable("productId") String productId, @RequestParam int quantity, HttpServletRequest request) {
        String sessionId = request.getSession(true).getId();

        Cart cart = cartService.read(sessionId);
        if (cart == null)
            cart = cartService.create(new Cart(sessionId));

        Product product = productService.getProductById(productId);
        CartItem cartItem = new CartItem(product);
        cartItem.setQuantity(quantity);
        cart.addCartItem(cartItem);

        System.out.printf("Product ITEM: %s\n", product.getName());
        System.out.printf("CART ITEM: %s\n", cart.getCartItems().size());

        cartService.update(sessionId, cart);
    }

    @RequestMapping(value = "/remove/{productId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem(@PathVariable String productId, HttpServletRequest request) {
        String sessionId = request.getSession(true).getId();
        Cart cart = cartService.read(sessionId);
        if(cart == null) {
            cart = cartService.create(new Cart(sessionId));
        }

        Product product = productService.getProductById(productId);

        cart.removeCartItem(new CartItem(product));

        cartService.update(sessionId, cart);
    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.GET)
    public @ResponseBody Cart read(@PathVariable(value = "cartId") String cartId) {
        Cart cart= cartService.read(cartId);

        return cart;
    }
}
