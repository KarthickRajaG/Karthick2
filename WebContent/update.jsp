<%@page import="com.training.Dao.*"%>
<jsp:useBean id="u" class="com.training.bean.Employee"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
int i=EmpDao.update(u);
if(i>0)
{
	response.sendRedirect("success.jsp");
}
else
{
	response.sendRedirect("error.jsp");
}
%>

