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
	<!-- ex08.jsp -->
	
	<form method="POST" action="ex08ok.jsp">
	<table class="vertical">
		<tr>
			<th>너비(px)</th>
			<td><input type="number" min="100" max="500" step="10" name="width" value="120"></td>
		</tr>
		<tr>
			<th>높이(px)</th>
			<td><input type="number" min="30" max="500" step="10" name="height" value="30"></td>
		</tr>
			
		<tr>
			<th>텍스트</th>
			<td><input type="text" name="txt" value= "Button"></td>
		</tr>
		
		<tr>
			<th>배경색</th>
			<td><input type="color"name="color1" value="#FFFFFF"></td>
		</tr>
		
		<tr>
			<th>글자색</th>
			<td><input type="color"name="color2" value="#000000"></td>
		</tr>
		
		<tr>
			<th>글자 크기(px)</th>
			<td><input type="number"name="size" value="16" min= "10" max="100"></td>
		</tr>
		
		<tr>
			<th>버튼 개수(ea)</th>
			<td><input type="number" name="count" value= "1" min="1" max="10"></td>
		</tr>
		
		<tr>
			<th>버튼 간격</th>
			<td>
				<div>
					<input type="range" name="left" value= "0" min="0" max="50">좌우 간격
				</div>
				<div>
					<input type="range" name="top" value= "0" min="0" max="50">상하 간격 
				</div>
			</td>
		</tr>
		
		<tr>
			<th>아이콘</th>
			<td>
				<label><input type="radio" name="rb1" checked>없음</label>
				<label><input type="radio" name="rb1" value= "images/0.png" ><img src = "images/0.png" ></label>
				<label><input type="radio" name="rb1" value= "images/1.png" ><img src = "images/1.png" ></label>
				<label><input type="radio" name="rb1" value= "images/2.png" ><img src = "images/2.png" ></label>
				<label><input type="radio" name="rb1" value= "images/3.png" ><img src = "images/3.png" ></label>
				<label><input type="radio" name="rb1" value= "images/4.png"><img src = "images/4.png" ></label>
			</td>
		</tr>
		
		<tr>
			<th>테두리</th>
			<td>
				<select name="sel1">
					<option value="1">감추기</option>
					<option value="2">보이기</option>
				</select>
			</td>
		</tr>
		
		
	</table>
	<div>
		<button>만들기</button>
	</div>
	</form>
	


	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>