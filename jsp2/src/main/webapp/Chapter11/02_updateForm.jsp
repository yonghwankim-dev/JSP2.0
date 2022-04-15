<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 변경 폼</title>
</head>
<body>
	<form action="/jsp2/Chapter11/03_update.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="memberid" size="10"/></td>
				<td>이름</td>
				<td><input type="text" name="name" size="10"/></td>
			</tr>
			<tr colspan="4">
				<td><input type="submit" value="변경"/></td>
			</tr>
		</table>
	</form>
</body>
</html>