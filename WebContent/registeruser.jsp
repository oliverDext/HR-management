<%@ page import="com.hr.management.EstablishConnection"%>
<%@ page import="java.sql.*"%>

<%
	String s1 = request.getParameter("loginname");
	String s2 = request.getParameter("password");
	String s3 = request.getParameter("username");
	String s4 = request.getParameter("fathername");
	String s5 = request.getParameter("gender");
	String s6 = request.getParameter("email");
	String s7 = request.getParameter("mobile");
	String s8 = request.getParameter("pincode");
	String s9 = request.getParameter("address");
	String s10 = request.getParameter("dob");
	String s11 = request.getParameter("qualification");
	String s12 = request.getParameter("experience");
	String s13 = request.getParameter("achievement");
	String s14 = request.getParameter("skills");

	try
	{int temp=0;
		Connection con = EstablishConnection.getConnection();
		PreparedStatement ps1=con.prepareStatement("select * from user where loginname='"+s1+"'");
		ResultSet rs=ps1.executeQuery();


		if(rs.next())
		{
			temp=1;
		out.print("<h2>This loginname already exist try other name...!!!</h2>");
%>
<jsp:include page="register.html"></jsp:include>

<%}

		else{
	
		PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,s1);
		ps.setString(2,s2);
		ps.setString(3,s3);
		ps.setString(4,s4);
		ps.setString(5,s5);
		ps.setString(6,s6);
		ps.setString(7,s7);
		ps.setString(8,s8);
		ps.setString(9,s9);
		ps.setString(10,s10);
		ps.setString(11,s11);
		ps.setString(12,s12);
		ps.setString(13,s13);
		ps.setString(14,s14);
		int z = ps.executeUpdate();
		if(z>0)
		{
			out.print("<h1>You are successfully registered.....</h1>");
			%>
<jsp:include page="login.html"></jsp:include>
<%
		}}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>