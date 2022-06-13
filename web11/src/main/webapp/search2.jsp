<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 검색</title>
</head>
<body>
<center>
	Home > 관리자 검색
	<hr>
	<form name="searchForm" action="searchSuccess2.jsp" 
		method="post" >
		<fieldset style="width:400px">
			<legend> 검색 화면 </legend><p>
			<table>
			<tr height="30">
				<td align="center">항목&nbsp;</td>
				<td><input type="radio" id="userID" name="checkID" value="id">아이디</td>
				<td><input type="radio" id="userNAME" name="checkNAME" value="name">이름</td>
				<td><input type="radio" id="userMAIL" name="checkEMAIL" value="email">이메일</td>
			</tr>
			<tr height="40">
				<td align="center">검색 내용&nbsp;</td>
				<td><input type="text" name="String"></td>
			</tr>
			<tr height="50">
				<td></td>
				<td><input type="submit" value="검색"></td>
			</tr>
			</table>
		</fieldset>
	</form>
	</center>
</body>
</html>