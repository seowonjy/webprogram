<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
      String u_title = request.getParameter("userTITLE");
      String u_text = request.getParameter("userTEXT");

	String sql = "update bang set text = ? WHERE  title = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_text);
	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("bang.jsp");
	}else{
		response.sendRedirect("bangdrawErr.jsp");
	}
	sm.close();
	conn.close();	
%>