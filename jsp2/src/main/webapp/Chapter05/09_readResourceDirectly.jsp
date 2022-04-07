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
	FileReader fr = null;
	char[] buff = new char[512];
	int len=-1;
	
	try{
		//notice.txt로부터 내용을 읽어 오는 FileReader생성(자원의 절대 경로 사용)
		fr = new FileReader("C:\\Users\\qkdlf\\java workspace backup\\JSP\\local_JSP\\WebContent\\Chapter05\\notice.txt");
		
		//notice.txt로부터 읽어 온 데이터를 out 기본 객체를 사용하여 웹 브라우저에 출력한다.
		
		while((len=fr.read(buff))!=-1)
		{
			out.print(new String(buff,0,len));
		}
	}catch(IOException ex){
		out.println("예외 발생: " + ex.getMessage());
	}finally{
		if(fr!=null)
			try{
				fr.close();	//라인 13에서 생성한 FileReader를 종료한다.
			}catch(IOException ex)
			{
			}
	}
%>
</body>
</html>