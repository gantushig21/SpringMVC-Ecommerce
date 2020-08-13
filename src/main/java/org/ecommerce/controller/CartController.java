package org.ecommerce.controller;

import org.ecommerce.domain.Cart;
import org.ecommerce.domain.CartItem;
import org.ecommerce.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;

    @RequestMapping
    public String get(HttpServletRequest request) {
        return "redirect:/cart/"+request.getSession(true).getId();
    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.GET)
    public String getCart(@PathVariable("cartId") String cartId, Model model) {
        model.addAttribute("cartId",cartId);
        Cart cart = cartService.read(cartId);
        if (cart == null) {
            cart = new Cart(cartId);
            cartService.create(cart);
        }
        model.addAttribute("cart", cart);

        for (Map.Entry<String, CartItem> entry: cart.getCartItems().entrySet())
            System.out.println(entry.getValue().getProduct().getUnitPrice() + " " + entry.getValue().getTotalPrice());

        System.out.println(cart.getGrandTotal());
        return "cart";
    }
}
