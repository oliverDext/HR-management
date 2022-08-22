
<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>

<%
	String s0 = request.getParameter("pid");
	String s1 = request.getParameter("projectname");
	String s2 = request.getParameter("location");
	String s3 = request.getParameter("technology");
	String s4 = request.getParameter("nom");
	String s5 = request.getParameter("duration");
		
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("insert into project values(?,?,?,?,?,?)");
		ps.setString(1,s0);
		ps.setString(2,s1);
		ps.setString(3,s2);
		ps.setString(4,s3);
		ps.setString(5,s4);
		ps.setString(6,s5);
		
		
		
		int z = ps.executeUpdate();
		if(z>0)
		{
			
			
			
			out.print("<h1>You are successfully ADDED.....</h1>");%>
<jsp:include page="addprojects.jsp"></jsp:include>
<%
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>