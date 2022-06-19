<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 게시글 삭제 </title>
</head>
<body>
	Home > 게시글 삭제
	<hr>
	<form action="drawCheck.jsp" name="user_info" method="post">
		<fieldset style="width:200px">
			<legend> 게시글 삭제 </legend><p>
	
			제목 : <br>
			<input type="text" name="userTITLE"><br>
			
		<div align="center">
			<input type="submit" value=" 게시글 삭제"> &nbsp;&nbsp;
		</div><br>
		</fieldset>
	</form>
</body>
</html>