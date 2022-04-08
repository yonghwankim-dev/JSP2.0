<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.net.URLEncoder"%>
<%@ page import ="java.util.Random"%>
<%
	Random random = new Random();
	int number = random.nextInt();
	String numberString = Integer.toString(number);
	
	response.sendRedirect(request.getContextPath()+"/Chapter07/12_2_receiveParam.jsp?num="+
							URLEncoder.encode(numberString));
%>