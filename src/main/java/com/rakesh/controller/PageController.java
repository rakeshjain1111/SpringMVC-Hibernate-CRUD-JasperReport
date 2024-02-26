package com.rakesh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rakesh.model.Student;

import org.springframework.web.bind.annotation.ModelAttribute;
@Controller
public class PageController {
	
	@RequestMapping(value="/")
    public ModelAndView home() {
    	ModelAndView mv =new ModelAndView("home");
    	mv.addObject("clickOnuserlogin",true);
    	mv.addObject("student",new Student());
    	mv.addObject("title","Home");
    	return mv;
    }
	
//	@RequestMapping(value="/save")
//    public String add(@ModelAttribute("student") Student s) {
//    	mv.addObject("clickOnuserlogin",true);
//    	mv.addObject("title","Home");
//    	return ;
//    }
	
}
