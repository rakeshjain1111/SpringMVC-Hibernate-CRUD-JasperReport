package com.rakesh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rakesh.model.Student;
import com.rakesh.services.StudentService;

import org.springframework.web.bind.annotation.ModelAttribute;
@Controller
public class PageController {
	
	@Autowired
	private StudentService sService;
	
	@RequestMapping(value="/")
    public ModelAndView home() {
    	ModelAndView mv =new ModelAndView("home");
    	mv.addObject("clickOnuserlogin",true);
    	mv.addObject("student",new Student());
    	mv.addObject("title","Home");
    	return mv;
    }
	
	@RequestMapping(value="/save")
    public String add(@ModelAttribute("student") Student s,Model model) {
		
		
		 boolean res=sService.add(s);
		 
		 System.out.print(res);
		if(s.getId()==0) {
			sService.add(s);
		}
		else {
			sService.update(s);
		}
    	
    	return "redirect:/";
    }
	
}
