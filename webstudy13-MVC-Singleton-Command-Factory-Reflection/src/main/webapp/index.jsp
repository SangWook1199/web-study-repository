<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC + FrontController Design Pattern</title>
</head>
<body>
	<h2>WEB MVC 기반 Front Controller Design Pattern 적용</h2>
	<form method="get" action="FrontControllerServletVer6">
		<%-- 하나의 프론트 컨트롤러 다양한 요청이 이루어지므로 어떤 요청인지를
		hidden으로 알린다
	--%>
		<input type="hidden" name="command" value="FindCustomerById">
		<input type="text" name="customerId" required="required"
			placeholder="고객아이디">
		<button type="submit">검색</button>
	</form>
	<br>
	<br>
	<%-- 
		다양한 요청을 Front 즉 하나의 진입점에서 처리하도록 한다 
		index -- 고객등록요청 -- FrontControllerServlet  --HandlerMapping   			Controller
		                          doDispatch()             								   | ----------MockDao
		                          |	                        		 					   |
		                          |                    							RegisterCustomerController
		                          |
		                    register-result.jsp 로 리다이렉트
	--%>
	<form action="FrontControllerServletVer6" method="post">
		<input type="hidden" name="command" value="RegisterCustomer">
		<input type="text" name="id" placeholder="아이디" required="required"><br>
		<input type="text" name="name" placeholder="이름" required="required"><br>
		<input type="text" name="address" placeholder="주소" required="required"><br>
		<br>
		<button type="submit">고객등록</button>
	</form>
	<br>
	<br>
	<%--
		구현해야할 부분: HandlerMapping(추가 구현) 과 UpdateCustomerController(신규 개발)
	--%>
	<form action="FrontControllerServletVer6" method="post">
		<input type="hidden" name="command" value="UpdateCustomer"> <input
			type="text" name="id" placeholder="아이디" required="required"><br>
		<input type="text" name="name" placeholder="이름" required="required"><br>
		<input type="text" name="address" placeholder="주소" required="required"><br>
		<br>
		<button type="submit">고객수정</button>
	</form>
	<br>
	<br>
	<%--
		1. 요청 폼 구성
		2. Model MockDao 구현
    	3. DeleteCustomerController 구성
	--%>
	<form action="FrontControllerServletVer6" method="post">
		<input type="hidden" name="command" value="DeleteCustomer"> <input
			type="text" name="id" placeholder="아이디" required="required"><br>
		<button type="submit">고객삭제</button>
	</form>
	<br>
	<br>
	<img alt="Front Controller Pattern" src="front-all.png" width="50%">
</body>
</html>