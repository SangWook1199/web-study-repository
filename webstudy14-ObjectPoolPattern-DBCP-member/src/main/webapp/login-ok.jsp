<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	MemberVo mvo = (MemberVo)session.getAttribute("mvo");
	<%= mvo.getName() %> 을 EL로 간단히 처리
--%>
${sessionScope.mvo.name}님 로그인 성공하셨습니다 <br> 
<a href="index.jsp">Home으로 이동</a>
</body>
</html>