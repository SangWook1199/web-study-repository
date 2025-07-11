<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<input type="hidden" name="command" value="FindMemberById"> 
		<input type="text" name="id" placeholder="아이디" required="required">
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
	<img src="front-all.png" width="60%">
</body>
</html>