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

					<li><a href="userdetails.jsp">User Details</a></li>
					<li><a href="vaccancy.jsp">Vaccancy</a></li>

					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<div class="content_item">
					<div id="content">
						<a href="showquestion.jsp">Show question</a> | | <a
							href="addquestion.jsp">Add Question</a> | <a
							href="showresult.jsp">Show Results</a>

						<%
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from answer ");
			ResultSet rs = ps.executeQuery();
		
			out.print("<form name='myform1' action='#'>");
			out.print("<table border='1' class='CSSTableGenerator'>");
			out.print("<tr>");
			out.print("<td>Loginname</td>");
			out.print("<td>Correct</td>");
			out.print("<td>Wrong</td>");
			out.print("<td>Reply</td>");
			
			out.print("</tr>");
			
			while(rs.next())
			{
				out.print("<tr>");
				out.print("<td>"+rs.getString("loginname")+"</td>");
				out.print("<td>"+rs.getString("correct")+"</td>");
				out.print("<td>"+rs.getString("wrong")+"</td>");
				out.print("<td><a href='shortlist.jsp?username="+rs.getString("loginname")+"' class='myButton'>Shortlist</a>");
				out.print("</tr>");
			}
			out.print("</table>");
			out.print("</form>");
			con.close(); 
			}
			catch(Exception e)
			{
			}
		%>
					</div>
				</div>


				<div class="sidebar_container">
					<div class="sidebar"></div>


				</div>

			</div>
			<!--end of site content-->

		</div>
		<!--end of main-->
</body>
</html>
