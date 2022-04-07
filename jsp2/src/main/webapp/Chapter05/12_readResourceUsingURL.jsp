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
	String resourcePath = "Chapter05/notice.txt";	//�� ���ø����̼� �������� ��� ���

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
		out.println("���� �߻�: " + ex.getMessage());
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