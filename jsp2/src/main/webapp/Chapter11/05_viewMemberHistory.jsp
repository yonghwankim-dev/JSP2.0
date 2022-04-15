<%@page import="java.io.IOException"%>
<%@page import="java.io.Reader"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 1. JDBC 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String memberid = request.getParameter("memberid");
	
	try{
		String url = "jdbc:oracle:thin:@localhost:1521/ORCLPDB";
		String user = "JSP2";
		String pwd = "JSP2";
		
		
		String query = "select * from member_history where memberid = ?";
		
		// 2. 데이터베이스 연결 생성
		conn = DriverManager.getConnection(url, user, pwd);
		
		// 3. Statement 생성
		stmt = conn.prepareStatement(query);
		
		stmt.setString(1, memberid);
		
		// 4. 쿼리 실행
		rs = stmt.executeQuery();
		
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<% if(rs.next()){ %>
	<table width="100%" border="1">
		<tr>
			<td>아이디</td>
			<td><%= memberid %></td>
		</tr>
		<tr>
			<td>히스토리</td>
			<td>
			<%
				String history = null;
				Reader reader = null;
			
				try{
					reader = rs.getCharacterStream("HISTORY");
					
					if(reader != null)
					{
						StringBuffer buff = new StringBuffer();
						char[] ch = new char[512];
						int len = -1;
						
						while((len = reader.read(ch)) != -1)
						{
							buff.append(ch, 0, len);
						}
						
						history = buff.toString();
					}	
				}catch(IOException e)
				{
					out.println(e);
				}finally{
					if(reader != null)
					{
						reader.close();
					}
				}
				
			%>
			<%= history %>
			</td>
		</tr>
	</table>
<% 
		}
		else
		{
%>
			<h1><%=memberid %> 회원의 히스토리가 없습니다.</h1>
<%	
		}
	}catch(SQLException e)
	{
		out.println(e);	
	}finally{
		if(rs != null)
		{
			rs.close();
		}
		if(stmt != null)
		{
			stmt.close();
		}
		if(conn != null)
		{
			conn.close();
		}
	}
%>
</body>
</html>