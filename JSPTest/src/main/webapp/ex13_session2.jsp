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
	<!-- ex13_session2.jsp -->

	<%-- <div>a: <%= a %></div> --%>
	<div>b: <%= session.getAttribute("b") %></div> 
	<div>c: <%= application.getAttribute("c") %></div>


	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>