
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.hr.management.EstablishConnection"%>

<html>

<%
	try
	{
	String st="0";	
	String sun = (String)session.getAttribute("sessionuser"); 	
	Connection con = EstablishConnection.getConnection();	
	PreparedStatement pst = con.prepareStatement("update user set fathername=? , email=? , mobile=? , pincode=? , address=? , qualification=? , experience=? , achievement=? , skills=? where loginname='"+sun+"'");
	pst.setString(1,request.getParameter("father"));
	pst.setString(2,request.getParameter("email"));
	pst.setString(3,request.getParameter("mobile"));
	pst.setString(4,request.getParameter("pin"));
	pst.setString(5,request.getParameter("address"));
	pst.setString(6,request.getParameter("qly"));
	pst.setString(7,request.getParameter("experience"));
	pst.setString(8,request.getParameter("achievement"));
	pst.setString(9,request.getParameter("skills"));
	int z = pst.executeUpdate();
	if(z>0)
	{
		st="1";
		session.setAttribute("profilest",st);
		%>
<jsp:forward page="usersettings.jsp"></jsp:forward>
<%
	}
	else
	{
		st="0";
		session.setAttribute("profilest",st);
		%>
<jsp:forward page="usersettings.jsp"></jsp:forward>
<%
	}
	con.close();
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>

</html>