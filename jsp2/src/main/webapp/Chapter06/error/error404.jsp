<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	/*���� �ڵ带 200���� �����Ѵ�. �̷��� ���� �ڵ带 200���� �������� ������
    	  �� ���������� 404 ���� �ڵ尡 ���޵Ǹ�, �� ��� �� �������� ��ü������
    	  404 ������ �� �����ִ� ȭ���� ����Ѵ�. ���� error404.jsp�� ���
    	  ����� �� �������� �״�� ��µǵ��� �ϱ� ���ؼ��� ���� �ڵ带 200���� ������
    	  �־�� �Ѵ�.(SC_OK�� ���� 200�̴�.)
    	  �� ���� ��Ĺ�� ��쿡 �ش��ϸ� ����ϴ� �� �����̳ʿ� ���� �̷��� �� �� �൵
    	  ���ϴ� ����� ��µǱ⵵ �Ѵ�.*/
    	response.setStatus(HttpServletResponse.SC_OK);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>404 ���� �߻�</title>
</head>
<body>
<b>��û�� �������� �������� �ʽ��ϴ�.</b>
</body>
</html>