
<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>

<%
	String s0 = request.getParameter("id");
	String s1 = request.getParameter("profile");
	String s2 = request.getParameter("type");
	String s3 = request.getParameter("experience");
	String s4 = request.getParameter("opening");
	String s5 = request.getParameter("location");
	String s6 = request.getParameter("salary");
		
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("insert into vaccancy values(?,?,?,?,?,?,?)");
		ps.setString(1,s0);
		ps.setString(2,s1);
		ps.setString(3,s2);
		ps.setString(4,s3);
		ps.setString(5,s4);
		ps.setString(6,s5);
		ps.setString(7,s6);
		
		
		int z = ps.executeUpdate();
		if(z>0)
		{
			
			
			
			out.print("<h1>You are successfully ADDED.....</h1>");%>
<jsp:include page="addvaccancy.jsp"></jsp:include>
<%
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>