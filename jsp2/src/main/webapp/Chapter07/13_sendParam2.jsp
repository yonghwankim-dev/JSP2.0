<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.net.URLEncoder"%>
<%@ page import ="java.util.Random"%>
<%
	Random random = new Random();
	int number = random.nextInt();
	String numberString = Integer.toString(number);
%>
	
<script>
location.href = "<%= request.getContextPath()%>/Chapter07/12_2_receiveParam.jsp"+
				"?num=<%= URLEncoder.encode(numberString)%>";
</script>	
	
