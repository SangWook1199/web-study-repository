<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("${param.address} 주소를 가진 회원이 없습니다.");
		location.href = "index.jsp"
	</script>
</body>
</html>