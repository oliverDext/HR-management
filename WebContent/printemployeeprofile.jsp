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
					<li><a href="vaccancy.jsp">Vaccancy</a></li>
					<li><a href="projects.jsp">Projects</a></li>
					<li><a href="question.jsp">UserTest</a></li>
					<li><a href="employee.jsp">Employee</a></li>
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
			PreparedStatement ps = con.prepareStatement("select * from employee where empid='"+username+"'");
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{	
			out.print("<form name='myform1' action='#'>");
				
				out.print("<table>");
				out.print("<tr><td colspan='1'><h3>Employee Details</h3></td>");
				out.print("<tr><td><b>Employee Id</td><td>"+rs.getString("empid")+"</td>");
				out.print("<tr><td><b> Name</td><td>"+rs.getString("empname")+"</td>");
				out.print("<tr><td><b> Password</td><td>"+rs.getString("emppassword")+"</td>");
				
				
				out.print("<tr><td colspan='2'><hr></td></tr>");
				
				out.print("<tr><td colspan='1'><h3>Personal Details</h3></td>");
				out.print("<tr><td><b>Father Name</td><td>"+rs.getString("empfather")+"</td>");
				out.print("<tr><td><b>Gender</td><td>"+rs.getString("empgender")+"</td>");
				out.print("<tr><td><b>Date Of Birth</td><td>"+rs.getString("empdob")+"</td>");
				out.print("<tr><td><b>Mobile</td><td>"+rs.getString("empmobile")+"</td>");
				out.print("<tr><td><b>Pincode</td><td>"+rs.getString("emppincode")+"</td>");
				out.print("<tr><td><b>Address</td><td>"+rs.getString("empaddress")+"</td>");
				
				out.print("<tr><td colspan='2'><hr></td></tr>");

				out.print("<tr><td><h2></h2></td><td></td></tr>");
				out.print("<tr><td colspan='1'><h3>Education Details</h3></td>");
				out.print("<tr><td><b>Qualification</td><td>"+rs.getString("empqualification")+"</td>");
				out.print("<tr><td><b>Experience</td><td>"+rs.getString("empexperience")+"</td>");
				out.print("<tr><td><b>Achievements</td><td>"+rs.getString("empachievement")+"</td>");
				out.print("<tr><td><b>skills</td><td>"+rs.getString("empskills")+"</td>");
				
				out.print("<tr><td colspan='2'><hr></td></tr>");
				out.print("<tr><td><h2></h2></td><td></td></tr>");
				out.print("<tr><td colspan='1'><h3>Job Details</h3></td>");
				out.print("<tr><td><b>Project Undertaken</td><td>"+rs.getString("empprojects")+"</td>");
				out.print("<tr><td><b>Project Duration</td><td>"+rs.getString("empprojectduration")+"</td>");
				out.print("<tr><td><b>Job Type</td><td>"+rs.getString("empjobtype")+"</td>");
				out.print("<tr><td><b>Date of Joining</td><td>"+rs.getString("empdoj")+"</td>");
				out.print("<tr><td><b>Date of salary</td><td>"+rs.getString("empsalary")+"</td>");
				
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

					<br>
				</div>
			</div>




		</div>
		<!--end of site content-->

	</div>
	<!--end of main-->

</body>
</html>
