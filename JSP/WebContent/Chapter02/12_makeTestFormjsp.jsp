<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
폼에 데이터를 입력한 후 '전송' 버튼을 클릭하세요.
<form action="./13_viewParameter.jsp" method="post"><!--입력한 데이터를 전달한 jsp페이지를 ./13_viewParameter.jsp로 지정한다. post 방식으로 데이터를 전송한다. -->
이름: <input type="text" name ="name" size="10"><br> <!--이름이 name인 요청 파라미터 입력 칸 생성 -->
주소: <input type="text" name="address" size="30"><br>	<!--이름이 address인 요청 파라미터 입력 칸 생성 -->
좋아하는 동물:
	<input type="checkbox" name="pet" value="dog">강아지
	<input type="checkbox" name="pet" value="cat">고양이
	<input type="checkbox" name="pet" value="pig">돼지
<br>
<input type="submit" value="전송">
</form>

</body>
</html>