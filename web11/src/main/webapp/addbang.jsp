<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 게시판 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.user_info;
			if(f.userTITLE.value == "")
			{
				alert("제목은 반드시 입력해야 합니다."");
				f.userTITLE.focus();
				return false;
			}
			else if(f.userTEXT.value < 200)
			{
				alert("게시글의 내용은 200자 이내로 해야합니다.");
				f.userTEXT.focus();
				return false;
			}		
			else return true;
		}		
	</script>
</head>
<body>
	Home > 게시글 등록
	<hr>
	<form action="insertbangDB.jsp" name="user_info" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 게시글 등록 화면 </legend><p>
	
			제목 : <br>
			<input type="text" size = "100" name="userTITLE"><br><br>
		
			내용 : <br> 
			<input type="text" size = "200" name="userTEXT"><br><br>
			<hr>
			<input type="reset" value=" ◀ 다시작성 ">
			<input type="submit" value=" 등록하기 ▶ ">
			<br><br>
		</fieldset>
	</form>
</body>
</html>