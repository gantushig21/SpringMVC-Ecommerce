package org.ecommerce.controller;

import org.ecommerce.domain.Product;
import org.ecommerce.service.ProductService;
import org.ecommerce.utils.FactoryMethods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.validation.Valid;
import java.io.File;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {
    @Autowired
    private ProductService productService;

    @Autowired
    private ServletContext servletContext;

    @RequestMapping
    public String list(@RequestParam int page, @RequestParam int limit, Model model) {
        Page<Product> products = productService.getProducts(page, limit);

        int total = products.getTotalPages();

        model.addAttribute("products", products.getContent());
        model.addAttribute("page", page);
        model.addAttribute("limit", limit);
        model.addAttribute("pages", total);

        return "products";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String getAddForm(@ModelAttribute("product") Product product, Model model) {
        model.addAttribute("categories", FactoryMethods.getCategories());

        return "add-product";
    }

    @RequestMapping(value = "/product")
    public String getProductById(Model model, @RequestParam("id") String productId) {
        model.addAttribute("product", productService.getProductById(productId));

        return "product-detail";
    }

    @RequestMapping(value="/add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") @Valid Product product, BindingResult result, Model model) {
        System.out.println(product);
        if (result.hasErrors()) {
            model.addAttribute("categories", FactoryMethods.getCategories());

            return "add-product";
        }

        System.out.println(product.getDescription());
        MultipartFile productImage = product.getProductImage();
        String rootDirectory = servletContext.getRealPath("/");

        if (productImage!=null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(rootDirectory + File.separator + "resources" + File.separator
                        + "images" + File.separator + product.getId() + ".png"));

            } catch (Exception e) {
                throw new RuntimeException("Product Image saving failed", e);
            }
        }

        productService.create(product);
        return "redirect:/products?page=0&limit=10";
    }
}
