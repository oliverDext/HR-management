
<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>

<%
	String s0 = request.getParameter("ques");
	String s1 = request.getParameter("option1");
	String s2 = request.getParameter("option2");
	String s3 = request.getParameter("option3");
	String s4 = request.getParameter("correct");
	
		
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("insert into question values(?,?,?,?,?)");
		ps.setString(1,s0);
		ps.setString(2,s1);
		ps.setString(3,s2);
		ps.setString(4,s3);
		ps.setString(5,s4);
		
		
		
		
		int z = ps.executeUpdate();
		if(z>0)
		{
			
			
			
			out.print("<h1>You have successfully ADDED.....</h1>"+s0);%>
<jsp:include page="addquestion.jsp"></jsp:include>
<%
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>