<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//템플릿인 template.jsp에서 필요로 하는 request 기본 객체의 "PAGETITLE" 속성의 값을 지정한다.
	//request.setAttribute("PAGETITLE", "정보보기");
	request.setCharacterEncoding("EUC-KR");
%>
 <!-- 템플릿인 template.jsp를 사용한다. -->
 <!-- 템플릿인 template.jsp에서 내용 부분을 출력할 때 필요로 하는 "CONTENTPAGE"파라미터를 지정한다. -->
<jsp:forward page="/Chapter08/08_template.jsp">
	<jsp:param name="CONTENTPAGE" value="/Chapter08/10_info_view.jsp"/>
	<jsp:param name="PAGETITLE" value="정보보기"/>		
</jsp:forward>
 