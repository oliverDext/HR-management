<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@page import="com.hr.management.ConstantUtil"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
<title>ABC Software Pvt. Ltd.</title>
<meta name="description" content="for company management" />
<meta name="keywords" content="hr operation manager" />
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
				<a href="#">ABC Software Pvt. Ltd.</a>
			</div>
			<div id="menubar">
				<ul id="menu">
					<li><a href="index.html">Home</a></li>
					<li><a href="career.jsp">Career</a></li>
					<li><a href="company.html">Company</a></li>
					<li><a href="products.html">Products</a></li>
					<li class="last"><a href="login.html">Login</a></li>
				</ul>
			</div>
		</div>
		<div id="site_content">
			<div id="content">
				<div class="content_item">
					<h1>Career</h1>
					<br><p>Our employee's expertise lies in new-age solutions
							like Social Media and Mobility. We consult customers on the right
							technologies, approach and solutions for their projects.</p>
						<h2>
							<u>Vaccancy</u>
						</h2>
						<br><br> <%@ page import="java.sql.*"%>
								<%		
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("select * from vaccancy");
		ResultSet rs=ps.executeQuery();
		ResultSetMetaData rsmd=rs.getMetaData();
		int a=rsmd.getColumnCount();
		
		String ar[]={"Id","Job Profile","Job Type","Experience","Openings","Location","Salary"};		
		
			while(rs.next())
			{
				out.print("<table>");
				for(int i=2;i<a;i++)
				{
					out.print("<tr>");
					out.print("<td style='font-family:comic sans ms; font-size:15px'><b>"+ar[i]+"     :</b></td><td>"+rs.getString(i+1)+"</td>");
					out.print("</tr>");

				}
				out.print("<table>");
									out.print("<a href='login.html' class=myButton>Apply Now</a>");
				
				out.print("<hr>");
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

	</div>
	<p style="float: left; padding: 0;">&nbsp;</p>
</body>
</html>
