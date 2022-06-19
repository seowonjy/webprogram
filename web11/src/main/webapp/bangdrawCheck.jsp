<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_title = request.getParameter("userTITLE");
	String sql = "DELETE FROM bang WHERE title = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_title);

	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("bang.jsp");
	}else{
		response.sendRedirect("bangdrawErr.jsp");
	}
	sm.close();
	conn.close();	
%>