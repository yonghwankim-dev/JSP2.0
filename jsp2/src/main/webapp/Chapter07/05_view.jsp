<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A"))
	{
		viewPageURI = "/Chapter07/viewModule/a.jsp";
	}else if(code.equals("B"))
	{
		viewPageURI = "/Chapter07/viewModule/b.jsp";
	}else if(code.equals("C"))
	{
		viewPageURI = "/Chapter07/viewModule/c.jsp";
	}
	
%>

<jsp:forward page="<%= viewPageURI %>"></jsp:forward>