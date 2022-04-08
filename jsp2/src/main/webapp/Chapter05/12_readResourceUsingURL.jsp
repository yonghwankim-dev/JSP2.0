<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.net.URL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String resourcePath = "/Chapter05/notice.txt";	//웹 어플리케이션 내에서의 경로 사용

	BufferedReader br = null;
	char[] buff = new char[512];
	int len=-1;
	
	try{
		URL url = application.getResource(resourcePath);	// 지정한 경로에 해당하는 자원과 관련된 URL 객체 생성
		
		// url.openStream() 메서드를 사용하여 자원으로부터 데이터를 읽어오는 InputStream을 생성한다.
		// 아래의 코드는 application.getReourceAsStream(recourcePath)와 동일하다.
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