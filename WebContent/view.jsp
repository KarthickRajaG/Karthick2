<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.training.Dao.EmpDao,com.training.bean.*,java.util.*" %>

<%  
List<Employee> list=EmpDao.getAllEmployees();  
request.setAttribute("list",list);  
%>
 
<center>
<div class="jumbotron"><h1> Employee Details</h1></div>
 
<table border='1' width='100%' class="table" >
<tr class="success"><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Country</th><th>Edit</th><th>Delete</th></tr>

<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>  
<td>${u.getEmail()}</td><td>${u.getCountry()}</td>  
<td><a href="Editform.jsp?id=${u.getId()}" class="btn btn-primary">Edit</a></td>  
<td><a href="Delete.jsp?id=${u.getId()}" class="btn btn-danger btn-small">Delete</a></td></tr>  
</c:forEach>  
</table>

</center>  
<br/><a href="save.jsp" class="btn btn-info btn-active">Add New User</a>  
</body>
</html>