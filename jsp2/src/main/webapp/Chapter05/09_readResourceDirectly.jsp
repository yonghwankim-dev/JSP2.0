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
		//notice.txt�κ��� ������ �о� ���� FileReader����(�ڿ��� ���� ��� ���)
		fr = new FileReader("C:\\Users\\qkdlf\\java workspace backup\\JSP\\local_JSP\\WebContent\\Chapter05\\notice.txt");
		
		//notice.txt�κ��� �о� �� �����͸� out �⺻ ��ü�� ����Ͽ� �� �������� ����Ѵ�.
		
		while((len=fr.read(buff))!=-1)
		{
			out.print(new String(buff,0,len));
		}
	}catch(IOException ex){
		out.println("���� �߻�: " + ex.getMessage());
	}finally{
		if(fr!=null)
			try{
				fr.close();	//���� 13���� ������ FileReader�� �����Ѵ�.
			}catch(IOException ex)
			{
			}
	}
%>
</body>
</html>