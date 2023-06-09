<%@page import="com.student_management_system.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
html {
	overflow: hidden;
}
body {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
}
form {
	width: 40%;
	height: max-content;
	border: 3px solid #565656;
	border-radius: 20px;
	padding: 1rem;
}
input {
	width:90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
}
.btn {
	width: 30%;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin-top: 2rem;
	font-weight: 600;
}
.btn:hover {
	background-color: salmon;
	border: 3px solid salmon;
	color: #fff;
}
h2 {
	font-size: 2rem;
}
</style>
<body>
	
			<% Student student =(Student) request.getAttribute("student"); %>

		<form action="saveUpdatedStudent" method="post">
		<h2>Update Student</h2>
		
		<input name="studentId" value="<%=student.getStudentId()%>"
		 readonly="readonly" type="text"><br><br>
		 
		 
		 
		<input name="studentName" value="<%= student.getStudentName()%>"
			type="text"><br><br>
			
		<input name="studentPhoneNumber" value="<%= student.getStudentPhoneNumber()%>"
			type="text"><br><br>
			
		<input name="studentEmail" value="<%= student.getStudentEmail()%>"
			type="email"><br><br>
			
		<input name="studentFee" value="<%= student.getStudentFee()%>" type="text"
			readonly="readonly">
		<input type="submit" class="btn" value="Save">
		 
	
	</form>
	
	
	

</body>
</html>