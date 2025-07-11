<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>총 회원수</title>
</head>
<body>
<%-- 
	아래 EL의 requestScope 생략가능 (sessionScope, applicationScope 또한 생략가능 
	<%= request.getAttribute("totalMemberCount")%>
--%>
<p>총 회원수 ${requestScope.totalMemberCount }명</p>
</body>
</html>