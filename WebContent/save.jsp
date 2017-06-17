<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
</head>
<body>

<div class="container">
<center>
<div class="jumbotron"><h1>Add New Employee</h1></div>
<form action="SaveServlet" method="post"> 
Name:<input type="text" name="name"/><br><br>  
Password:<input type="password" name="password"/><br><br>  
Email:<input type="email" name="email"/><br><br>  
Country: 
<select name="country" style="width:150px">  
<option>India</option>  
<option>USA</option>  
<option>UK</option>  
<option>Other</option>  
</select>  <br><br>
<input type="submit" class="btn btn-success btn-small" value="Save Employee"/>  
</form>  
 </center> 
<a href="view.jsp" class="btn btn-info btn-small" role="button">view employees</a> 
  </div>  
</body>
</html>