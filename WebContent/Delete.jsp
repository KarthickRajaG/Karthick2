<%@page import="com.training.Dao.EmpDao"%>  
<jsp:useBean id="u" class="com.training.bean.Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="u" />  
<%  

EmpDao.delete(u.getId());  
response.sendRedirect("view.jsp");  
%>  