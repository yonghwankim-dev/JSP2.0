<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<td>이름</td>
			<td>아이디</td>
			<td>이메일</td>
		</tr>
<%
		Connection conn =null;
		PreparedStatement stmt = null;
		ResultSet rs = null;		
		try{

			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			//initCtx의 lookup메서드를 이용해서 "java:comp/env" 에 해당하는 객체를 찾아서 evnCtx에 삽입
			DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptest");
			//envCtx의 lookup메서드를 이용해서 "jdbc/jsptest"에 해당하는 객체를 찾아서 ds에 삽입
			conn = ds.getConnection();
			//getConnection메서드를 이용해서 커넥션 풀로 부터 커넥션 객체를 얻어내어 conn변수에 저장
			
			String query = "select * from MEMBER order by MEMBERID";
			
			stmt = conn.prepareStatement(query);
			rs = stmt.executeQuery();

			while(rs.next()){
%>
				<tr>
					<td><%= rs.getString("NAME") %></td>
					<td><%= rs.getString("MEMBERID") %></td>
					<td><%= rs.getString("EMAIL") %></td>
				</tr>
<%
			}
		}catch(SQLException e){
			System.out.println(e);
			e.printStackTrace();
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
	</table>
</body>
</html>