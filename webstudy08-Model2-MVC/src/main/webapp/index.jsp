<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model2 MVC</title>
</head>
<body>
	<h2>Model2 MVC</h2>
	<h2>Controller 에서 View로 제어를 이동하는 방식</h2>
	<img alt="" src="forward-redirect-이동방식.png">
	<br>
	<h2>Forward 방식</h2>
	<%
	for (int i = 1; i <= 5; i++) {
	%>
	<a href="FindNewsById?newsId=<%=i%>"><%=i%>번 뉴스</a>
	<br>
	<%
	}
	%>
	<hr>
	<h2>redirect 방식</h2>
	<form action="RegisterNews" method="post">
		<input type="text" name="news" placeholder="뉴스를 입력"
			required="required">
		<button>뉴스 등록</button>
	</form>
	<hr>
	<%--
			index.jsp -- request -- NewsListServlet
									doGet(){
										Model 연동
										request에 뉴스리스트 공유
										forword로 제어 이동(news-list.jsp)
									}
									|
									|
			<--- response ---	news-list.jsp
									
		 --%>
	<h2>forward 방식</h2>
	<a href="NewsList">뉴스 목록보기</a>
</body>
</html>