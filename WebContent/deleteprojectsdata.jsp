<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>
<%
	String id=request.getParameter("pid");
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("delete from project where pid='"+id+"'");
		int z=ps.executeUpdate();
		if(z>0)
		{
		
			out.print("<h1>You have successfully deleted project</h1>"); 
		%>
<jsp:include page="deleteprojects.jsp"></jsp:include>
<%
		}
		}
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>