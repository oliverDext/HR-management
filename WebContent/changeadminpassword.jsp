<%@ page import="java.sql.*"%>
<%@ page import="com.hr.management.EstablishConnection"%>

<html>

<%  
		try
		{
		String un = (String)session.getAttribute("sessionadmin");
		String opw = request.getParameter("opw");
		String npw = request.getParameter("npw");
		Connection con = EstablishConnection.getConnection();	
		PreparedStatement ps = con.prepareStatement("select * from hruser where loginname='"+un+"'");
		ResultSet rs = ps.executeQuery();
			if(rs.next()==true)
			{
				if(opw.equals(rs.getString("password")))
				{
					ps = con.prepareStatement("update hruser set password=? where loginname='"+un+"'");
					ps.setString(1,npw);	
					ps.executeUpdate();
					con.close();
					out.print("password successfully changed");
				}
				else
				{
					con.close();
					out.print("old password not matched");
				}	
			}
			con.close();	
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	%>

</html>