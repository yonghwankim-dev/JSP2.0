<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
    <%@ page import="java.util.Map" %>
    <%
    //요청 파라미터의 캐릭터 인코딩을 한글로 지정한다. 이렇게 해야 한글을 올바르게 처리할 수 있다.
    	request.setCharacterEncoding("UTF-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
<!-- request.getParameter()메소드를 사용하여 name파라미터와 address파라미터의 값을 출력한다. -->
<b>request.getParameter() 메소드 사용</b><br>
name 파라미터 = <%=request.getParameter("name") %><br>
address 파라미터 = <%=request.getParameter("address") %><br>
<p>
<b>request.getParameterValues() 메소드 사용</b><br>
<%
/*
	request.getParameterVlues() 메소드는 String의 배열(String[])을 리턴한다.
	배열의 첫번째 원소를 사용할 때에는 배열변수[0]의 형태를 사용한다.
	배열 변수명을 values로 하였으므로, values[0], values[2]와 같이 파라미터값에 접근한다.
*/
	String[] values = request.getParameterValues("pet");
	if(values!=null)
	{
		for(int i=0;i<values.length;i++)
		{
			%>
			<%=values[i] %>
			<%
		}
	}
%>
<p>

<b>request.getParameterNames() 메소드 사용</b><br>
<%
/*
	파라미터의 이름을 출력한다.
	이 코드가 request.getParameterNames() 메소드를 사용하는 기본형태입니다.
*/
	Enumeration e = request.getParameterNames();
	while(e.hasMoreElements())
	{
		String name = (String)e.nextElement();
		%>
		<%=name %>
<%
	}
%>
<p>

<b>request.getParameterMap() 메소드 사용</b><br>
<%
/*
	request.getParameterMap()은 자바의 Map을 사용하여 파라미터 이름과 파라미터 값을 리턴한다.
	이 Map에는 <파라미터이름, 파라미터값 배열>이 쌍을 이루고 있다.
*/
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam!=null){
		%>
		name = <%= nameParam[0] %>
<%
	}
%>
</body>
</html>