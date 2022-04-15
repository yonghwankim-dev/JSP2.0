<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	// 1. JDBC 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn = null;
	PreparedStatement stmt = null;
	int updateCnt = 0;
	String memberid = request.getParameter("memberid");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	try{
		
		String url = "jdbc:oracle:thin:@localhost:1521/ORCLPDB";
		String user = "JSP2";
		String pwd = "JSP2";
 		
		String query = "insert into member(memberid, password, name, email) " 
					 + "values(?, ?, ?, ?)";
		
		// 2. 데이터베이스 연결 생성
		conn = DriverManager.getConnection(url, user, pwd);
		
		// 3. prepareStatement 생성
		stmt = conn.prepareStatement(query);
		
		// 4. 파라미터 섲렁
		stmt.setString(1, memberid);
		stmt.setString(2, password);
		stmt.setString(3, name);
		stmt.setString(4, email);
		
		// 5. 쿼리 실행
		updateCnt = stmt.executeUpdate();
	}catch(SQLException e){
		out.println(e);
	}finally{
		// 6. 사용한 Statement 종료
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<% 
		if(updateCnt > 0)
		{
	%>
			<h1>
				<%= memberid %> 유저가 삽입되었습니다.
			</h1>
	<%
		}
		else
		{
	%>
			<h1><%= memberid %> 유저 삽입 실패하였습니다.</h1>
	<%
		}
	%>
</body>
</html>