package com.student_management_system.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student_management_system.dao.StudentDao;
import com.student_management_system.dto.Student;


@WebServlet("/deleteStudent")
public class DeleteStudent extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	String	StudentId	=(String) req.getParameter("studentId");
	
		int id = Integer.parseInt(StudentId);
		
				StudentDao dao=	new StudentDao();
				
				dao.deleteStudent(id);
				
				List<Student> students = dao.getAllStudents();
				req.setAttribute("students", students);
				
				req.getRequestDispatcher("ViewStudents.jsp").forward(req, resp);
	}

}
