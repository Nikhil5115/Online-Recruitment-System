<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	int id=Integer.parseInt(request.getParameter("id"));
	out.print(id);
	DBConnection db=new DBConnection();
	Connection conn=db.GetConnection();
	
	String sql="delete from job_master where id=?";
	PreparedStatement pst=conn.prepareStatement(sql);
	pst.setInt(1, id);
	
	int i=pst.executeUpdate();
	response.sendRedirect("view_job.jsp");
%>

</body>
</html>