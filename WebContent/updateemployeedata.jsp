<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<%
	String username = request.getParameter("emp");

try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("update  employee set empname=? , emppassword=? , empfather=? ,  empgender=? ,  empdob=? ,  emppincode=? ,  empaddress=? ,  empqualification=? ,  empexperience=? ,  empachievement=? ,  empskills=? ,  empprojects=? ,  empprojectduration=? ,  empjobtype=? ,  empdoj=? ,  empsalary=? ,  empmobile=? where empid='"+username+"'");
		ps.setString(1,request.getParameter("empname"));
		ps.setString(2,request.getParameter("emppassword"));
		ps.setString(3,request.getParameter("empfather"));
		ps.setString(4,request.getParameter("empgender"));
		ps.setString(5,request.getParameter("empdob"));
		ps.setString(6,request.getParameter("emppincode"));
		ps.setString(7,request.getParameter("empaddress"));
		ps.setString(8,request.getParameter("empqualification"));
		ps.setString(9,request.getParameter("empexperience"));
		ps.setString(10,request.getParameter("empachievement"));
		ps.setString(11,request.getParameter("empskills"));
		ps.setString(12,request.getParameter("empprojects"));
		ps.setString(13,request.getParameter("empprojectduration"));
		ps.setString(14,request.getParameter("empjobtype"));
		ps.setString(15,request.getParameter("empdoj"));
		ps.setString(16,request.getParameter("empsalary"));
		ps.setString(17,request.getParameter("empmobile"));
                int z = ps.executeUpdate();
		if(z>0)
	 	{
			%>out.print("successfully updated..");
<jsp:forward page="showemployee.jsp"></jsp:forward>
<%
		}
		else
		{
			%>
<jsp:forward page="showemployee.jsp"></jsp:forward>
<%
		}
		con.close();
		
		
		}
	catch(Exception e){}	
		
		
%>