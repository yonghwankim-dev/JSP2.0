<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �߻�</title>
</head>
<body>
��û ó�� �������� ���ܰ� �߻��߽��ϴ�.<br>
���� �ð� ���� ������ �ذ��ϵ��� �ϰڽ��ϴ�.
<p>
���� Ÿ�� : <%= exception.getClass().getName() %><br><!-- exception �⺻ ��ü�� Ŭ���� �̸��� ��� -->
���� �޽��� : <b><%= exception.getMessage() %></b><!-- ���� �޽����� ����Ѵ�. -->
</body>
</html>