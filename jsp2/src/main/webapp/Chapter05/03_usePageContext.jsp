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
	/*
		pageContext.getRequest()�� ����Ÿ���� ServletRequest�ε�, JSP �������� HTTP ��û�� ó���ϹǷ�
		HttpServletRequest�� ����ȯ
	*/ 
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
%>
request �⺻ ��ü�� pageContext.getRequest()�� ���� ����:
<%= 
//request �⺻ ��ü�� pageContext.getRequest()�� ���� ���� ���� ��ü������ �˻��Ѵ�.
request==httpRequest
%>

<br>
pageContext.getOut() �޼ҵ带 ����� ������ ���:
<%
	//pageContext.getOut().println()�� out.println()�� �����ϴ�.
	pageContext.getOut().println("�ȳ��ϼ���!");

%>
</body>
</html>