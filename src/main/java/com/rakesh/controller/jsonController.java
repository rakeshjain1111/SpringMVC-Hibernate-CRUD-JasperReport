package com.rakesh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.rakesh.model.Student;
import com.rakesh.services.StudentService;



@RestController
public class jsonController {
	
	@Autowired
	private StudentService sServ;
	
	@RequestMapping("/studentList")
	@ResponseBody
	public List<Student> sliist(){
		return sServ.getAllStudent();
		
		}
}
