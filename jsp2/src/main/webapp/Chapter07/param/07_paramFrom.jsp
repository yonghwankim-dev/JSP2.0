<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String value = request.getParameter("p1");
	if(value==null)
	{
		value = "NOPARAM";
	}
		
%>
<jsp:forward page="08_paramTo.jsp" >
	<jsp:param name="p1" value="<%=value %>"/>
</jsp:forward>

