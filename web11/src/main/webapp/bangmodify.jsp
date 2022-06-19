<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <% 
      String u_title = request.getParameter("userTITLE");
      String u_text = request.getParameter("userTEXT");
    %>
	<title> 게시글 수정 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.user_up;
			if(f.userTEXT.value == "")
			{
				alert("내용은 반드시 입력해야합니다.");
				f.userTEXT.focus();
				return false;
			}		
			else return true;
		}		
	</script>
</head>
<body>
<center>
	Home > 게시글 수정
	<hr>
	<form action="bangupdate.jsp" name="user_up" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 게시글 수정 화면 </legend><p>
	
			제목 : <%= u_title%><br><br>
			<input type="text" name="userTITLE" value="<%=u_title%>"><br><br>
		
			내용 : <%= u_text%><br><br> 
			<input type="text" size = "200" name="userTEXT" value="<%= u_text%>"><br><br>
			<hr>
			<input type="reset" value="다시작성 ">
			<input type="submit" value=" 수정하기">
			<br><br>
		</fieldset>
	</form>
	</center>
</body>
</html>