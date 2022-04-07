<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	
    	String pageTitle = (String)request.getParameter("PAGETITLE");
    	String contentPage = request.getParameter("CONTENTPAGE");

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><%= pageTitle %></title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
<td colspan="2">
	<jsp:include page="/Chapter08/module/top.jsp" flush="false"/>
</td>
</tr>

<tr>
<td width="100" valign="top">
	<jsp:include page="/Chapter08/module/left.jsp" flush="false"/>
</td>

<td width="300" valign="top">
	<!-- ����κ�: ���� -->
	<jsp:include page="<%= contentPage %>" flush="false"/>
	<br><br><br>
	<!-- ����κ�: �� -->
</td>
</tr>
<td colspan="2">
	<jsp:include page="/Chapter08/module/bottom.jsp" flush="false"/>
</td>
<tr>
</tr>
</table>
</body>
</html>