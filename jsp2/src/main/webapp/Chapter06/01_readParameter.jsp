<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page errorPage = "error/viewErrorMessage.jsp" %><!-- ������ �߻��� ��� error/viewErrorMessage.jsp 
    														�������� �����ֵ��� �����Ѵ�. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%/*name �Ķ������ ���� �빮�ڷ� ��ȯ�Ͽ� ����Ѵ�.
		name �Ķ���Ͱ� �������� ���� ��� ���ܰ� �߻��Ѵ�.
	*/ %>
	name �Ķ���� �� : <%= request.getParameter("name").toUpperCase() %>
</body>
</html>