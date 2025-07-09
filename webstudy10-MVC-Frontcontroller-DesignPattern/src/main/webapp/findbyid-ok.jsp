<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 검색 결과</title>
</head>
<body>
<h3>고객 정보 검색 결과</h3>
<%--
	<input type="text" name="customerId" required="required" placeholder="고객아이디">
 --%>
<p>고객 아이디 ${param.customerId }</p>
<p>고객명 ${customer.name }</p>
<p>주소 ${customer.address }</p>
</body>
</html>