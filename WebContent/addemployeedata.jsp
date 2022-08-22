
<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>

<%
	String s0 = request.getParameter("empid");
	String s1 = request.getParameter("empname");
	String s2 = request.getParameter("emppassword");
	String s3 = request.getParameter("empfather");
	String s4 = request.getParameter("empgender");
	
	String s5 = request.getParameter("empdob");
	String s6 = request.getParameter("emppincode");
	String s7 = request.getParameter("empaddress");
	String s8 = request.getParameter("empqualification");
	String s9 = request.getParameter("empexperience");
	String s10 = request.getParameter("empachievement");
	String s11 = request.getParameter("empskills");
	String s12 = request.getParameter("empprojects");
	String s13 = request.getParameter("empprojectduration");
	String s14 = request.getParameter("empjobtype");
	String s15 = request.getParameter("empdoj");
	String s16 = request.getParameter("empsalary");
	
	String s17 = request.getParameter("empmobile");
	
		
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,s0);
		ps.setString(2,s1);
		ps.setString(3,s2);
		ps.setString(4,s3);
		ps.setString(5,s4);
		ps.setString(6,s5);
		ps.setString(7,s6);
		ps.setString(8,s7);
		ps.setString(9,s8);
		ps.setString(10,s9);
		ps.setString(11,s10);
		ps.setString(12,s11);
		ps.setString(13,s12);
		ps.setString(14,s13);
		ps.setString(15,s14);
		ps.setString(16,s15);
		ps.setString(17,s16);
		ps.setString(18,s17);
		
		
		
		
		
		int z = ps.executeUpdate();
		if(z>0)
		{
			
			
			
			out.print("<h1>Employee has been successfully ADDED.....</h1>"+s0);%>
<jsp:include page="addemployee.jsp"></jsp:include>
<%
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>