.<%@ page import="com.hr.management.EstablishConnection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
   String s1=(String)session.getAttribute("sessionexist");
   String s2=request.getParameter("fd");
   try
   {	Connection con = EstablishConnection.getConnection();	
        PreparedStatement ps = con.prepareStatement("select * from feedback where empname='"+s1+"'");
        ResultSet rs = ps.executeQuery();
	if(rs.next()==true)	
	{
        if(s1.equals(rs.getString("empname")))
          {
            ps = con.prepareStatement("update feedback set comment=? where empname='"+s1+"'");
	    ps.setString(1,s2);	
	    int z=ps.executeUpdate();  
	    if(z>0)
	     {
                out.print("your comment added succesfully...");
	      %>
<jsp:include page="feedback.jsp"></jsp:include>
<%
	     }
        }
      }
       else
	{
		
        ps = con.prepareStatement("insert into feedback values(?,?)");
	ps.setString(1,s1);
        ps.setString(2,s2);
        int z=ps.executeUpdate();
        if(z>0)
	{
          out.print("your comment added succesfully...");
	%>
<jsp:include page="feedback.jsp"></jsp:include>
<%
	}
	}
   }
   catch(Exception e)
   {
    System.out.println(e);

	}
%>