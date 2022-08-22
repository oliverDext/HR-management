<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@page import="com.hr.management.ConstantUtil"%>
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
					<li><a href="vaccancy.jsp">Vaccancy</a></li>

					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<a href="showvaccancy.jsp">Show Vaccancy</a> |<a
					href="deletevaccancy.jsp"> Delete Vaccancy </a> | <a
					href="addvaccancy.jsp">Add Vaccancy</a>
				<div class="content_item">
					<%@ page import="java.sql.*"%>
					<%		
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("select * from vaccancy");
		ResultSet rs=ps.executeQuery();
		ResultSetMetaData rsmd=rs.getMetaData();
		int a=rsmd.getColumnCount();
		out.print("<table border='4'>");
		for(int i=1;i<=a;i++)
		{
			out.print("<th>"+rsmd.getColumnName(i)+"</th>");
			
		}
			while(rs.next())
			{
				out.print("<tr>");
				for(int i=1;i<=a;i++)
				{
					
					out.print("<td>"+rs.getString(i)+"</td>");
					
				}
				out.print("</tr>");
			}
		}
		
		
			
			
			
			
	
	catch(Exception e)
	{
		System.out.println(e);
	}	
%>






				</div>
			</div>



		</div>
		<!--end of site content-->

	</div>
	<!--end of main-->

</body>
</html>
