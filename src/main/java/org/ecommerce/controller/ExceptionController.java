package org.ecommerce.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class ExceptionController {
    public static final String DEFAULT_ERROR_VIEW = "error-forbidden";

    @ExceptionHandler(value = Exception.class)
    public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception ex) {

        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", ex);
        mav.setViewName(DEFAULT_ERROR_VIEW);

        return mav;
    }
}
