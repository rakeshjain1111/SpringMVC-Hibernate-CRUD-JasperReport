package com.rakesh.controller;

import java.net.http.HttpRequest;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.rakesh.model.Student;
import com.rakesh.services.StudentService;



@RestController
public class jsonController {
	
	@Autowired
	private StudentService sServ;
	
	//@RequestMapping("/studentList")
	 @GetMapping(path = "/studentList", produces = {MediaType.APPLICATION_JSON_VALUE})   //if Controller is not produce JSON format then apply "produces = {MediaType.APPLICATION_JSON_VALUE"
	public ResponseEntity< List<Student>> sliist(){
		List<Student> students = sServ.getAllStudent();
		if(students.isEmpty()) {
			return new ResponseEntity<List<Student>>(HttpStatus.NO_CONTENT);
		}
		return  new ResponseEntity<List<Student>>(students,HttpStatus.OK);
		}
}

/*
 * @GetMapping(path = "/{id}", produces = {MediaType.APPLICATION_JSON_VALUE,
 * MediaType.APPLICATION_XML_VALUE})
 */