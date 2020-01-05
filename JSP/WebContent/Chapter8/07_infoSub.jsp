<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String type = request.getParameter("type");	//info.jsp에서 전달한 type 파라미터의 값을 읽어온다.
	if(type != null){
%>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>타입</td>
	<td><b><%=type %></b></td>
</tr>
<tr>
	<td>특징</td>
	<td>
	<% if(type.equals("A")){ %>
	강한 내구성
	<% }else if(type.equals("B")){ %>
	뛰어난 대처 능력
	<%} %>
	</td>
</tr>
</table>

<% 	}%>