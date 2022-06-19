<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 성공 </title>
</head>
<body>
	Home > 회원 탈퇴 성공
	<hr>
	회원 탈퇴가 완료되었습니다. <p>

	<table border="0">
		<tr>
			<td>
				<form action="membersList.jsp" method="post" >
					<input type="submit" value="회원 관리 화면 이동" >
				</form>	
			</td>
			<td>
				<form action="signup.jsp" method="post" >
					<input type="submit" value="회원가입 화면 이동" >
				</form>	
			</td>
		</tr>	 
	</table>			
</body>
</html>