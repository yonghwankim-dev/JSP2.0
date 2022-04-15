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
	
	
	String query = "select * from MEMBER where memberid = ?";
	
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
	MEMBER 테이블의 내용
	<table width="100%" border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
		</tr>
		<% 
			if(rs.next()){
				
		%>
			<tr>
				<td><%= rs.getString("MEMBERID") %></td>
				<td><%= rs.getString("PASSWORD") %></td>
				<td><%= rs.getString("NAME") %></td>
				<td><%= rs.getString("EMAIL") %></td>	
			</tr>
		<%
			}
		}catch(SQLException e){
			out.println(e);
		}finally{
			// 6. 사용한 Statement 종료
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
	</table>
</body>
</html>