<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_title = request.getParameter("userTITLE");
	String u_text = request.getParameter("userTEXT");
	String sql = "INSERT INTO bang(title, text) VALUES";
	sql += "('" + u_title + "','" + u_text + "')";

	Statement bm = conn.createStatement();
	
	int count = bm.executeUpdate(sql);
	if(count == 1){
		response.sendRedirect("bang.jsp");
	}else{
		out.println("게시글 작성 실패!");
		response.sendRedirect("bangerr.jsp");
	}
	bm.close();
	conn.close();	
%>