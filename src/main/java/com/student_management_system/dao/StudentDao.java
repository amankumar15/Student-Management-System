package com.student_management_system.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.student_management_system.dto.Student;

import java.util.List;

public class StudentDao {
	
	
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("sigma");
	EntityManager manager =factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();
	
	
	public void saveStudent(Student student)
	{
		transaction.begin();
		manager.persist(student);
		transaction.commit();
	}
	
	public List<Student> getAllStudents()
	{
		  Query query = manager.createQuery("select s from Student s");
		  List students = query.getResultList();
		  return students; 
		  
	}
	
	
	public Student getStudent(int StudentId)
	
	{
		return manager.find(Student.class, StudentId);
		
	}
	
	public void updateStudent(Student student) {
		transaction.begin();
		manager.merge(student);
		transaction.commit();
	}
	
	public void deleteStudent(int id)
	{
		transaction.begin();
		manager.remove(manager.find(Student.class, id));;
		transaction.commit();
		
	}
			

}
