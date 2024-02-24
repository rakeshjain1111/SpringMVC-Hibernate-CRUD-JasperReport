package com.rakesh.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rakesh.dao.StudentDAO;
import com.rakesh.model.Student;


@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentDAO sdao;
	
	@Override
	public boolean add(Student s) {
		return sdao.add(s);
	}

	@Override
	public boolean update(Student s) {
		return sdao.update(s);
	}

	@Override
	public boolean delete(int id) {
		return sdao.delete(id);
	}

	@Override
	public Student getStudent(int id) {
		return sdao.getStudent(id);
	}

	@Override
	public List<Student> getAllStudent() {
		return sdao.getAllStudent();
	}

	@Override
	public List<Student> getStudentByProperty(Object keyword) {
		return sdao.getStudentByProperty(keyword);
	}

}
