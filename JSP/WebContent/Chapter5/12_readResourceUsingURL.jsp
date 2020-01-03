<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.net.URL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String resourcePath = "Chapter5/notice.txt";	//웹 어플리케이션 내에서의 경로 사용

	BufferedReader br = null;
	char[] buff = new char[512];
	int len=-1;
	
	try{
		URL url = application.getResource(resourcePath);
		
		br = new BufferedReader(new InputStreamReader(url.openStream()));
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