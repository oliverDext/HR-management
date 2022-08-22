<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>
<%
	String un = request.getParameter("adminid");
	String pw = request.getParameter("adminpass");

	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con1 = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
		PreparedStatement ps1 = con1.prepareStatement("select * from hruser where loginname='"+un+"' and password='"+pw+"'");	
		ResultSet rs1 = ps1.executeQuery();
		if(rs1.next())
		{
		session.setAttribute("sessionadmin",un);
%>
<jsp:forward page="adminprofile.jsp"></jsp:forward>
<%
		}
		else
		{
%>
<jsp:include page="admin.html"></jsp:include>
<%
			out.print("<h3>Sorry! UserName or Password not matched</h3>");    
         	}		
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
%>