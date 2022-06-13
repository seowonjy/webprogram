<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <% 
      String u_id = request.getParameter("userID");
      String u_pw = request.getParameter("userPW");
      String u_mail = request.getParameter("userMAIL");
      String u_name = request.getParameter("userNAME");
      String u_manager = request.getParameter("userMANAGER");
    %>
	<title> 회원 정보 수정 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.user_up;

		 	if(f.userPW.value.length < 6)
			{
				alert("비밀번호는 6자 이상으로 입력해야 합니다.");
				f.userPW.focus();
				return false;
			}
			else if(f.userMAIL.value == "")
			{
				alert("이메일 주소는 반드시 입력해야 합니다.");
				f.userMAIL.focus();
				return false;
			}			
			else if(f.userNAME.value == "")
			{
				alert("이름은 반드시 입력해야 합니다.");
				f.userNAME.focus();
				return false;
			}			
			else return true;
		}		
	</script>
</head>
<body>
<center>
	Home > 회원 정보 수정
	<hr>
	<form action="update.jsp" name="user_up" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 회원 가입 화면 </legend><p>
	
			아이디 : <%= u_id%><br><br>
			<input type="hidden" name="userID" value="<%=u_id%>"><br><br>
		
			비밀번호 : <%= u_pw%><br><br> 
			<input type="password" size = "16" name="userPW" value="<%= u_pw%>"><br><br>
			
			이메일 : <%= u_mail%><br><br>
			<input type="email" size="30" name="userMAIL" value="<%= u_mail%>"><br><br>	
			
			이름 : <%= u_name%><br><br>
			<input type="text" size = "16" name="userNAME" value="<%= u_name%>"><br><br>
				
			관리자유무 : <%= u_manager%><br> <br>
			<input type="checkbox" name="userMANAGER"><br><br>
			<hr>
			<input type="reset" value="다시작성 ">
			<input type="submit" value=" 수정하기">
			<br><br>
		</fieldset>
	</form>
	</center>
</body>
</html>