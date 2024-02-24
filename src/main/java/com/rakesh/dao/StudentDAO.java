package com.rakesh.dao;

import java.util.List;

import com.rakesh.model.Student;

public interface StudentDAO {
	public boolean add(Student s);
	public boolean update(Student s);
	public boolean delete(int id);
	public Student getStudent(int id);
	public List<Student> getAllStudent();
	public List<Student> getStudentByProperty(Object keyword);
}
