<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/*응답 코드를 200으로 지정한다. 이렇게 응답 코드를 200으로 지정하지 않으면
    	  웹 브라우저에는 404 응답 코드가 전달되며, 이 경우 웹 브라우저는 자체적으로
    	  404 에러일 때 보여주는 화면을 출력한다. 따라서 error404.jsp의 출력
    	  결과가 웹 브라우저에 그대로 출력되도록 하기 위해서는 응답 코드를 200으로 지정해
    	  주어야 한다.(SC_OK의 값이 200이다.)
    	  이 경우는 톰캣의 경우에 해당하며 사용하는 웹 콘테이너에 따라서 이렇게 안 해 줘도
    	  원하는 결과가 출력되기도 한다.*/
    	response.setStatus(HttpServletResponse.SC_OK);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 에러 발생</title>
</head>
<body>
<b>요청 처리 과정에서 예외가 발생했습니다.</b>
<br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.
</body>
</html>