<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.kosa.job.model.*"%>
<%-- step3-model1-member-find-member-form-process.jsp --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model1 회원검색 결과</title>
</head>
<body>
	<h3>Model 1 회원 검색 결과</h3>
	<%--
	java 아이디에 대한 회원 정보
	이름: 손흥민 주소: 런던
	or
	java7 아이디에 대한 회원 정보
	회원 정보가 존재하지 않습니다.
 --%>
	<%
	MemberDao dao = new MemberDao();
	// clinet가 보낸 회원 아이디를 받는다
	String memberId = request.getParameter("memberId");
	MemberVo vo = dao.findMemberById(memberId);

	if (vo != null) {
	%>
	<p><%=memberId%>
		아이디에 대한 회원 정보
	</p>
	<p>
		이름:
		<%=vo.getName()%>
		주소:
		<%=vo.getAddress()%></p>
	<%
	} else {
	%>
	<p><%=memberId%>
		아이디에 대한 회원 정보
	</p>
	<p>회원 정보가 존재하지 않습니다.</p>
	<%
	}
	%>
</body>
</html>