<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>IP</td><td><%=request.getRemoteAddr() %></td>
</tr>
<tr>
	<td>URI</td><td><%=request.getRequestURI() %></td>
</tr>
</table>