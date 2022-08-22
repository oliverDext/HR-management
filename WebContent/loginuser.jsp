<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>

<%
	String un = request.getParameter("user");
	String pw = request.getParameter("password");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con1 = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
		PreparedStatement ps1 = con1.prepareStatement("select * from user where loginname='"+un+"' and password='"+pw+"'");	
		ResultSet rs1 = ps1.executeQuery();
		if(rs1.next())
		{
		session.setAttribute("sessionuser",un);
%>
<jsp:forward page="userprofile.jsp"></jsp:forward>
<%
		}
		else
		{
%>
<jsp:include page="login.html"></jsp:include>
<%
			out.print("<h3>Sorry! UserName or Password not matched</h3>");
		}		
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
%>