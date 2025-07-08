<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- jstl 을 사용하기 위한 선언부 --%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step3-jstl-choose</title>
</head>
<body>
	<%-- 
		EL Test 
		아래의 EL 표현식을 기존 JSP 스크립틀릿으로 표현하면
		<%
			MemberVo mvo = (MemberVo)request.getAttribute("mvo");
		%>
		<%=mvo.getName()%>
		아래의 mvo.name 은 MemberVo 객체의 getName()을 호출하는
		것임
	--%>
	<p>회원명: ${mvo.name }</p>
	<p>주소: ${mvo.address }</p>
	<br>
	<%--
		jstl choose ~ when ~ otherwise
		(java 의 if ~ else if ~ else 구문의 역할)
	 --%>
	<c:choose>
		<c:when test="${mvo.address=='뉴욕' }">
			<p>${mvo.name }님 ${mvo.address }에 살고있습니다.</p>
		</c:when>
		<c:when test="${mvo.address=='런던' }">
			<p>${mvo.name }님 ${mvo.address }에 살고있습니다.</p>
		</c:when>
		<c:otherwise>
			<p>이 부분은 else 구문입니다.</p>
		</c:otherwise>
	</c:choose>
</body>
</html>