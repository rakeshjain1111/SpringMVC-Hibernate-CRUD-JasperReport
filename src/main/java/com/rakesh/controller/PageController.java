package com.rakesh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rakesh.model.Student;
import com.rakesh.services.StudentService;

import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class PageController {

	@Autowired
	private StudentService sService;

	@RequestMapping(value = "/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("clickOnuserlogin", true);
		mv.addObject("student", new Student());
		mv.addObject("title", "Home");
		return mv;
	}

	@RequestMapping(value = "/save")
	public String add(@ModelAttribute("student") Student s, Model model, HttpServletRequest req) {

		System.out.print(s);
		if (s.getId() == 0) {
			boolean res = sService.add(s);
		} else {
			sService.update(s);
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/slist")
	public ModelAndView slist() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("userClickOnallStudent", true);
		mv.addObject("slist", sService.getAllStudent());
		System.out.println(sService.getAllStudent());
		return mv;
	}

	@RequestMapping(value = "/studentList/delete")
	public String delete(HttpServletRequest req) {
		int sid = Integer.parseInt(req.getParameter("id"));
		boolean res = sService.delete(sid);
		return "redirect:/slist";
	}

	@RequestMapping(value = "/studentList/update")
	public ModelAndView update(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("home");
		int sid = Integer.parseInt(req.getParameter("id"));
		System.out.println(sid);
		Student s = sService.getStudent(sid);
		System.out.println(s);
		mv.addObject("clickOnuserlogin", true);
		mv.addObject("student", s);
		mv.addObject("title", "Home");
		return mv;
	}
	
	


	@RequestMapping(value = "/allstureport")
	public ModelAndView allStudentReport() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("userClickOnallStuReoprt", true);
		return mv;
	}

}
