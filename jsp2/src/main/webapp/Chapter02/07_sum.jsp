<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int sum=0;
	for(int i=0;i<=10;i++)
	{
		sum += i;
	}
%>
1���� 10������ ���� <%=sum %>�Դϴ�.
<br>
<%
	int sum2=0;
	for(int i=11;i<=20;i++)
	{
		sum2 += i;
	}
%>
11���� 20������ ���� <%=sum2 %>�Դϴ�.
</body>
</html>