<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	public int add(int a, int b)
	{
		return a+b;
	}

	public int subtract(int a, int b)
	{
		return a-b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int val1 = 3;
	int val2 = 9;
	int addResult = add(val1,val2);
	int subtractResult = subtract(val1, val2);
%>
<%= val1 %> + <%= val2 %> = <%= addResult %>
<br>
<%= val1 %> - <%= val2 %> = <%= subtractResult %>
</body>
</html>