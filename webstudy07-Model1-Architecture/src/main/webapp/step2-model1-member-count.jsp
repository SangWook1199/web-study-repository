<%@page import="org.kosa.job.model.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.kosa.job.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model1 아키텍처</title>
</head>
<body>
<h2>Model1 Architecture를 적용한 총 회원수 보기</h2>
<%
MemberDao dao = new MemberDao();
int count = dao.getAllMemberCount();
%>
<h3>총 회원수: <%=count %>명</h3>
</body>
</html>