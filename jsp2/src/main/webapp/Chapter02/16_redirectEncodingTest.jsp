<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String value = "�ڹ�";
	String encodeValue = URLEncoder.encode(value);
	response.sendRedirect("/index.jsp?name="+encodeValue);
%>