package com.rakesh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value="/")
    public ModelAndView home() {
    	ModelAndView mv =new ModelAndView("home");
    	mv.addObject("clickOnuserlogin",true);
    	mv.addObject("title","Home");
    	return mv;
    }
}