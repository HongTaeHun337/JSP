<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String width = request.getParameter("width");
	String height = request.getParameter("height");
	String txt = request.getParameter("txt");
	String color1 = request.getParameter("color1");
	String color2 = request.getParameter("color2");
	String size = request.getParameter("size");
	String left = request.getParameter("left");
	String top = request.getParameter("top");
	String rb1 = request.getParameter("rb1");
	
	int count = Integer.parseInt(request.getParameter("count"));

%>
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
	<!-- ex08ok.jsp -->
	
	<h1>결과</h1>
	
	<div>
	
		<!-- 만들어질 상자 -->
		
		
		<% for(int i=0; i<count; i++) { %>
		<button style="border: 1px solid black; width:<%= width%>px; height: <%= height %>px; background-color: <%= color1 %>; color: <%= color2 %>; font-size: <%= size%>; margin: <%= top %>px <%= left %>px;"><img src=<%= rb1 %>><%= txt %></button>
		<% } %>
	
</div>


	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>