<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memberInfo" scope="request"
	class="Chapter10.madvirus.member.MemberInfo"></jsp:useBean>

<jsp:setProperty property="*" name="memberInfo" />
<jsp:setProperty property="password" name="memberInfo"
	value="<%=memberInfo.getId()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입</title>
</head>
<body>
	<table width="400" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty property="id" name="memberInfo"/></td>
			<td>암호</td>
			<td><jsp:getProperty property="password" name="memberInfo"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="memberInfo"/></td>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="memberInfo"/></td>
		</tr>
		<tr>
			<td>주소</td>
			<td colspan="3"><jsp:getProperty property="address" name="memberInfo"/></td>
		</tr>
	</table>
</body>
</html>