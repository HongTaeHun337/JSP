<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<title>Insert title here</title>
	<style>
	
	</style>
</head>
<body>
	<!-- ex13_session.jsp -->
	<h1>Session & Application</h1>
	
	<%
	
		int a = 10;
		session.setAttribute("b", 20); //세션변수
		application.setAttribute("c", 30);
	
	
	%>
	
	<div>a: <%= a %></div>
	<div>b: <%= session.getAttribute("b") %></div>
	<div>c: <%= application.getAttribute("c") %></div>
	
	<div><a href="ex13_session2.jsp">두번쨰 페이지</a></div>
	
	<%
		//pageContext.forward("ex13_session2.jsp");
	%>


	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>