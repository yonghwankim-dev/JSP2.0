<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//���ø��� template.jsp���� �ʿ�� �ϴ� request �⺻ ��ü�� "PAGETITLE" �Ӽ��� ���� �����Ѵ�.
	//request.setAttribute("PAGETITLE", "��������");
	request.setCharacterEncoding("EUC-KR");
%>
 <!-- ���ø��� template.jsp�� ����Ѵ�. -->
 <!-- ���ø��� template.jsp���� ���� �κ��� ����� �� �ʿ�� �ϴ� "CONTENTPAGE"�Ķ���͸� �����Ѵ�. -->
<jsp:forward page="/Chapter08/08_template.jsp">
	<jsp:param name="CONTENTPAGE" value="/Chapter08/10_info_view.jsp"/>
	<jsp:param name="PAGETITLE" value="��������"/>		
</jsp:forward>
 