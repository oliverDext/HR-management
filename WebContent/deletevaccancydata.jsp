<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>
<%
	String id=request.getParameter("id");
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("delete from vaccancy where id='"+id+"'");
		int z=ps.executeUpdate();
		if(z>0)
		{
		
			out.print("<h1>You have successfully deleted job id=> "+id+"</h1>"); 
		%>
<jsp:include page="deletevaccancy.jsp"></jsp:include>
<%
		}
		}
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>