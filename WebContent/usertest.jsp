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
					<% String su = (String)session.getAttribute("sessionuser");	
		out.print(su.toUpperCase()); %>
				</h1>
			</div>

			<div id="menubar">
				<ul id="menu">
					<li><a href="inbox.jsp">Inbox</a></li>


					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<div class="content_item">

					<%
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from question");
			ResultSet rs = ps.executeQuery();
		
			out.print("<form action='testsubmit.jsp' method='post'>");
			out.print("<ol>");
			int i=1;
			while(rs.next())
			{
				
				out.print("&nbsp;&nbsp;&nbsp; <li><h2>"+rs.getString("question")+"</li></h2>");
				out.print("&nbsp;&nbsp;&nbsp;<input type='radio' name='"+i+"' value='"+rs.getString("option1")+"'>"+rs.getString("option1"));
				out.print("&nbsp;&nbsp;&nbsp;<input type='radio' name='"+i+"' value='"+rs.getString("option2")+"'>"+rs.getString("option2"));
				out.print("&nbsp;&nbsp;&nbsp;<input type='radio' name='"+i+"' value='"+rs.getString("option3")+"'>"+rs.getString("option3"));
				
				
				i++;
			
			}
				
				
			
			out.print("<input type='hidden' value='"+i+"' name='t1' ");
			out.print("<center><br><br><input type='submit' value='Submit Test' class=myButton>");
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
