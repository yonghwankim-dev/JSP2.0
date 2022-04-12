<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="Chapter10.madvirus.member.MemberInfo"></jsp:useBean>

<%
	member.setId("madvirus");
	member.setName("김용환");
%>

<jsp:forward page="/Chapter10/02_useObject.jsp"/>