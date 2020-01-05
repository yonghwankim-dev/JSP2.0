<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String resourcePath = "/Chapter05/notice.txt";	//웹 어플리케이션 내에서의 경로 사용
%>
자원의 실제 경로:<br>
<%= application.getRealPath(resourcePath)%>
<br>
----------------------<br>
<%= resourcePath %> 의 내용<br>
----------------------<br>

<%
	BufferedReader br = null;
	char[] buff = new char[512];
	int len=-1;
	
	try{
		br = new BufferedReader(new InputStreamReader(application.getResourceAsStream(resourcePath)));
		while((len=br.read(buff))!= -1)
		{
			out.print(new String(buff,0,len));
		}
	}catch(IOException ex)
	{
		out.println("예외 발생: " + ex.getMessage());
	}finally{
		if(br!=null)
			try{
				br.close();
			}catch(IOException ex)
			{
				
			}
	}
%>

</body>
</html>