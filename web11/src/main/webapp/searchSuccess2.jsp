<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userID");
	String email = request.getParameter("userMAIL");
	String name = request.getParameter("userNAME");
	String sum = request.getParameter("String");
	String sql = "select name, id, email from members where id like ? or name like ? or email like ?;";
	if (id != null)
		sql = "select name, id, email from members where id like ?;";
	if (email != null)
		sql = "select name, id, email from members where email like ?;";
	if (name != null)
		sql = "select name, id, email from members where name like ?;";
	ResultSet rs = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/odbo";
		String user = "root";
		String passwd = "1234";
		Connection conn = DriverManager.getConnection(url, user, passwd);
		PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, "%"+sum+"%");
			stmt.setString(2, "%"+sum+"%");
			stmt.setString(3, "%"+sum+"%");
			rs = stmt.executeQuery();
%>
   <table border="1">
      <tr align="center">
         <td> Name </td>
         <td> ID </td>
         <td> Email </td>
      </tr>
		<%
				while (rs.next()) {
		%>
		<tr>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("id")%></td>
		<td><%=rs.getString("email")%></td>
		</tr>
		<%
	
	}
		%>
         