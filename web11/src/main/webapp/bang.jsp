<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title> bang list </title>
</head>
<body>
   Home > 게시글
   <hr>
   <table border="1">
   <% 
      String u_title = request.getParameter("userTITLE");
      String u_text = request.getParameter("userTEXT");

      Statement sm = conn.createStatement();
      ResultSet rs = sm.executeQuery("SELECT title, text FROM bang");
      
      String str = "";
      int count = 1;
      
      while(rs.next()){
          str += "<tr>" + "<td align = 'center'>"+ count + "</td>" +"<td>" + rs.getString("title") + "</td>" + "<td>" + rs.getString("text")
          + "</td>" + "'> 수정 </a></center></td>"+
          "<td><center><a href='bangmodify.jsp?userTITLE=" + rs.getString("title") + "&userTEXT=" + rs.getString("text")+  "'> 수정 </a></center></td>"+ 
     	  "<td><center><a href='bangdrawCheck.jsp?userTITLE=" + rs.getString("title") + "'> X </a></center></td>" +"</tr>";
          count++;
       }

        out.print("<tr> <td> 번호 </td> <td>제목</td> <td>내용</td> <td>수정</td> <td>삭제</td> </tr>");
      out.print(str);
      
      rs.close();
      sm.close();
      conn.close();   
   %>
   <hr>
   <table border="1">
      <tr>
         <td>
            <form action="addbang.jsp" method="post" >
               <input type="submit" value="게시글 등록하기" >
            </form>
         </td>   
           <td>
            <form action="bangwithdraw.jsp" method="post" >
               <input type="submit" value="게시글 삭제하기" >
            </form>
         </td> 
         <td>
            <form action="logout.jsp" method="post" >
               <input type="submit" value=" 로그 아웃" >
            </form>
         </td>
      </tr>
   </table>        
</body>
</html>   