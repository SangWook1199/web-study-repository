<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- jstl 을 사용하기 위한 선언부 --%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step2-jstl-if</title>
</head>
<body>
	<h2>step2-jstl-if</h2>
	<%--
		$: EL 의 표현 기호
		${param.nick} 은 request.getParameter("nick") 의 줄임말
		${member.address} 는
		<%@ import = "org.kosa.job.model.MeberVo" %>
		<%
		MemberVo member = (MemberVo)request.getAttribute("member");
		%>
		<%=member.getAddress()%>
		
	--%>
	<strong>${param.nick } ${param.age }</strong>
	<br>
	<br>
	<c:if test="${param.nick=='아이유' }">
		<h3>사용자 닉네임: ${param.nick }</h3>
	</c:if>
	<hr>
	<c:if test="${param.nick=='아이유' && param.age<30 }">
		<h3>두번째 if 실행</h3>
	</c:if>
</body>
</html>