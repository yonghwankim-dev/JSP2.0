<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choose 태그</title>
</head>
<body>
	<!-- begin, end 속성을 사용한 forEach 태그 -->
	<div>
		<c:forEach var="i" begin="1" end="10">
			${i}
		</c:forEach>
	</div>
	
	<!-- step 속성을 사용하여 2씩 증가시킨 forEach 태그 -->
	<div>
		<c:forEach var="i" begin="1" end="10" step="2">
			${i}
		</c:forEach>
	</div>

	
	<!-- items, begin, end 속성을 사용하여 배열의 일부분만을 출력하는 forEach태그  -->
	<div>
		<c:set var="intArray" value="<%= new int[]{1,2,3,4,5} %>"/>
		<c:forEach var="i" items="${intArray}" begin="2" end="4">
			${i}
		</c:forEach>
	</div>
	
	<!-- 해시맵을 순회하는 forEach 태그 -->
	<div>
		<%
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("김용환", 30);
			map.put("홍길동", 50);
			map.put("이성룡", 70);
		%>
		<c:set var="map" value="<%=map%>"/>
		<c:forEach var="i" items="${map}">
			${i.key} = ${i.value}<br>
		</c:forEach>
	</div>	
</body>
</html>