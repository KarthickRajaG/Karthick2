<%@page import="com.training.Dao.EmpDao" %>
<jsp:useBean id="u" class="com.training.bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=EmpDao.save(u);
if(i>0)
{
	response.sendRedirect("success.jsp");
	}
	else
	{
		response.sendRedirect("error.jsp");
}
%>
