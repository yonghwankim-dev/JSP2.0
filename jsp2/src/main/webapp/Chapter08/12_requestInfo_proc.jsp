<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
 <!-- 템플릿인 template.jsp를 사용한다. -->
 <!-- 템플릿인 template.jsp에서 내용 부분을 출력할 때 필요로 하는 "CONTENTPAGE"파라미터를 지정한다. -->
<jsp:forward page="/Chapter08/08_template.jsp">
	<jsp:param name="CONTENTPAGE" value="/Chapter08/11_requestInfo_view.jsp"/>
	<jsp:param name="PAGETITLE" value="요청정보"/>	
</jsp:forward>
 