<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
<title>hr operation</title>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript" src="jquery-1.4.3.min.js"></script>
<script type="text/javascript"
	src="fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript"
	src="fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css"
	href="fancybox/jquery.fancybox-1.3.4.css" media="screen" />

<script type="text/javascript">
		function cat(var x)
		{
			alert(""+x);
		}
	</script>
</head>

<body>

	<div id="main">
		<div id="header">
			<div id="banner">
				<h1>
					Welcome
					<% String su = (String)session.getAttribute("sessionadmin");	
		out.print(su.toUpperCase()); %>
				</h1>
			</div>

			<div id="menubar">
				<ul id="menu">
					<li><a href="adminsettings.jsp">Setting</a></li>
					<li><a href="admininbox.jsp">Inbox</a></li>
					<li><a href="userdetails.jsp">User Details</a></li>
					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<div class="content_item">
					<%

			String username = request.getParameter("username");
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from user where loginname='"+username+"'");
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{	
			out.print("<form name='myform1' action='#'>");
				
				out.print("<table>");
				out.print("<tr><td colspan='1'><h3>Personal Details</h3></td>");
				out.print("<tr><td><b>UserName</td><td>"+rs.getString("username")+"</td>");
				out.print("<tr><td><b>Father</td><td>"+rs.getString("fathername")+"</td>");
				out.print("<tr><td><b>Gender</td><td>"+rs.getString("gender")+"</td>");
				out.print("<tr><td><b>DOB</td><td>"+rs.getString("dob")+"</td>");
				out.print("<tr><td colspan='2'><hr></td></tr>");

				out.print("<tr><td><h2></h2></td><td></td></tr>");
				out.print("<tr><td colspan='1'><h3>Contact Details</h3></td>");
				out.print("<tr><td><b>Email</td><td>"+rs.getString("email")+"</td>");
				out.print("<tr><td><b>Mobile</td><td>"+rs.getString("mobile")+"</td>");
				out.print("<tr><td><b>Address</td><td>"+rs.getString("address")+"</td>");
				out.print("<tr><td><b>Pincode</td><td>"+rs.getString("pincode")+"</td>");
				
				out.print("<tr><td colspan='2'><hr></td></tr>");
				out.print("<tr><td><h2></h2></td><td></td></tr>");
				out.print("<tr><td colspan='1'><h3>Skills Details</h3></td>");
				out.print("<tr><td><b>Qualification</td><td>"+rs.getString("qualification")+"</td>");
				out.print("<tr><td><b>Experience</td><td>"+rs.getString("experience")+"</td>");
				out.print("<tr><td><b>Achievement</td><td>"+rs.getString("achievement")+"</td>");
				out.print("<tr><td><b>Skills</td><td>"+rs.getString("skills")+"</td>");
				out.print("</table>");

			out.print("</form>");
			}
			con.close(); 
			}
			catch(Exception e)
			{
				System.out.print(e);
			}
		%>

					<br><form action="test.jsp">
							<% 
			out.print("<input type='text' name='username' value="+username +"></input>"); 
			%>
							<input type="submit" class="myButton" value="Ready for Test">
								<input type="button" class="myButton" value="Back">
						</form>
				</div>
			</div>


			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">

						<% String un1 = username;
		File fe = new File(getServletContext().getRealPath("/")+"/images/");
		String str[] = fe.list();
		int i=0,z=0;
		for(i=0 ; i<str.length ; i++)
		{
			String fn1 = str[i].substring(0,str[i].indexOf("."));
			if(fn1.equals(un1))
			{
			out.print("<h2><br><center><img src='images/"+un1+".jpg' width='100' height='100'></img></center></h2>");
			z=1;
			break;
			}	
		}
		if(z==0)
		{
		out.print("<h2><br><center><img src='images/default.png' width='80' height='80'></img></center></h2>");
		}
		%>

					</div>
					<div class="sidebar_base"></div>
				</div>


			</div>

		</div>
		<!--end of site content-->

	</div>
	<!--end of main-->

</body>
</html>
