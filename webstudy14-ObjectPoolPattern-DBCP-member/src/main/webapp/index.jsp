<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Object Pool Pattern: DBCP</title>
</head>
<body>
	<%--
	개발 순서 : 1. Controller 2. HandlerMapping 3. FrontControllerServlet 4. 다수의 Controller
 --%>
	<h3>Object Pool Pattern: DBCP</h3>
	<%--
		querystring: 처리할 서버 프로그램 url?name=value
--%>
	<a href="front?command=Test">web test</a>
	<br>
	<br>
	<h3>회원관리</h3>
	<%--
	index -- Front -- HandlerMapping -- Controller
											|
									GetTotalMemberCountController <--> MemberDao <--> DataSourceManager(Dbconfig)
											|
											|forward
										member-count.jsp
--%>
	<a href="front?command=GetTotalMemberCount">총회원수 보기</a>
	<br>
	<br>
	<h3>회원검색</h3>
	<form action="front" method="get">
		<input type="hidden" name="command" value="FindMemberById"> <input
			type="text" name="id" placeholder="아이디" required="required">
		<button type="submit">회원검색</button>
	</form>
	<br>
	<br>
	<%--
	index -- Front -- HandlerMapping -- Controller
											|
									GetTotalMemberCountController <--> MemberDao <--> DataSourceManager(Dbconfig)
											|
											|forward
										member-count.jsp
--%>
	<h3>주소로 회원검색</h3>
	<form action="front" method="get">
		<input type="hidden" name="command" value="FindMemberByAddress">
		<input type="text" name="address" placeholder="주소" required="required">
		<button type="submit">주소로 회원검색</button>
	</form>
	<br>
	<br>
	<%-- 비로그인 상태이면 아래 로그인 폼을 제공한다 --%>
	<c:choose>
		<c:when test="${sessionScope.mvo == null }">
			<h3>로그인</h3>
			<form action="front" method="post">
				<input type="hidden" name="command" value="Login"> <input
					type="text" name="id" placeholder="아이디" required="required"><br>
				<input type="password" name="password" placeholder="비밀번호"
					required="required"><br>
				<br>
				<button type="submit">로그인</button>
			</form>
		</c:when>
		<%-- 세션체크, 기존 세션 존재하면 session.invalidate()로 세션 무효화후 리다이렉트 index.jsp--%>
		<c:otherwise>
			<form action="front" method="post">
				<input type="hidden" name="command" value="Logout">
				<p>${mvo.name }님 로그인 상태입니다</p>
				<button type="submit">로그아웃</button>
			</form>
		</c:otherwise>
	</c:choose>
	<%--
		jstl library 와 선언부 확인, 없으면 등록하고
		choose ~when ~otherwise 를 이용: sessionScope.mvo 의 존재 유무로
		비교 후 로그인 상태가 아니면 위의 로그인 폼을 보여주고
		로그인 상태이면 아래의 예처럼 사용자 정보와 로그아웃 버튼을 제공한다
		
		손흥민님 로그인 상태입니다
		<form>...
		<button>로그아웃</button>
	--%>
	<br>
	<br>
	<img src="front-all.png" width="60%">
</body>
</html>