<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

