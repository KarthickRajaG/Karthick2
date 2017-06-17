<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title> 
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>  
</head>  
<body>  
<%@page import="com.training.Dao.EmpDao,com.training.bean.Employee"%>  
  
<%  
String id=request.getParameter("id");  
Employee u=EmpDao.getEmployeeById(Integer.parseInt(id));  
%>
<center>
<div class="jumbotron"><h1> Update Employee</h1></div>  
<form action="update.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>Name:</td><td> 
<input type="text"name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Password:</td><td>
<input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
<tr><td>Email:</td><td>  
<input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td>Country:</td><td>  
<select name="country">  
<option>India</option>  
<option>Pakistan</option>
<option>Afghanistan</option>
<option>Barma</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Edit & Save" class="btn btn-success"/></td></tr>
</table>
</form>
</center>  



</body>  
</html>  