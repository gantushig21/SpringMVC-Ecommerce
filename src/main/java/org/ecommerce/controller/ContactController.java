package org.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("contact")
public class ContactController {
    @RequestMapping
    public String contactForm() {
        return "contact";
    }

    @RequestMapping(value = "/message", method = RequestMethod.POST)
    public String messageReceived() {
        return "redirect:/contact/thank-you";
    }

    @RequestMapping(value = "/thank-you", method = RequestMethod.GET)
    public String thankYou(Model model) {
        model.addAttribute("title", "Thank you");
        model.addAttribute("message", "We will contact you shortly");

        return "thank-you";
    }
}
