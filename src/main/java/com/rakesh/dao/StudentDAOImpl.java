package com.rakesh.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rakesh.model.Student;
@Repository
public class StudentDAOImpl implements StudentDAO {
	
	private SessionFactory sf;

	@Override
	@Transactional
	public boolean add(Student s) {
		try {
			sf.getCurrentSession().save(s);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	@Transactional
	public boolean update(Student s) {
		try {
			sf.getCurrentSession().update(s);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	@Transactional
	public boolean delete(int id) {
		Student s = sf.getCurrentSession().get(Student.class, id);
		if(s!=null) {
			this.sf.getCurrentSession().delete(s);
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	@Transactional
	public Student getStudent(int id) {
		Student s = sf.getCurrentSession().get(Student.class, id);
		return s;
	}

	@Override
	@Transactional
	public List<Student> getAllStudent() {
		return sf.getCurrentSession().createQuery("From Student").getResultList();
	}

	@Override
	@Transactional
	public List<Student> getStudentByProperty(Object keyword) {
		String q= "From Student Where name=:keyword OR fname=:keyword OR dob=:keyword OR course=:keyword";
		 return sf.getCurrentSession().createQuery(q,Student.class).setParameter("keyword", keyword).getResultList();
	}

}
