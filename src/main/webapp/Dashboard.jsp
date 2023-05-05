<%@page import="com.student_management_system.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
 		body{
 		height:100vh;
 		text-align:center;
 		flex-direction: center;
 		align-items: center;
 		justify-content:center;
 		}
 		
 		a{
 		padding: 5em , 1em;
 		font-size: 1.3rem;
 		border: 2px solid #565656;
 		border-radius: 50px;
 		text-decoration: none;
 		color: #303030;
 		margin:0.5rem;
 		}
 		
 		h1{
 		font-size: 3rem;
 		color:#565656; 		
 		}
 		

</style>

<body>
	<% Admin admin=(Admin) session.getAttribute("admin"); 
	
	if(admin!=null){
		
	
	%>
	<h1>WelCome Admin</h1>
	<h3>You can manage Student Data here!</h3>
	
	<div>
			<a href="saveStudent.jsp">Save_Student</a>
			<a href="viewStudens">View_Students</a>
	</div>
	
	<%} else{
		
		response.sendRedirect("AdminLogin.jsp");
		 
	} %> 
	
	

</body>
</html>