<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.io.*"%>
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
		function show()
		{
		alert("Get Ready For Test...!!");
		
		}
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
					<li><a href="usersettings.jsp">Setting</a></li>
					<li><a href="inbox.jsp">Inbox</a></li>
					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<%@ page import="java.sql.*"%>

				<%		
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
		PreparedStatement ps = con.prepareStatement("select * from message where loginname='"+su+"'");
		ResultSet rs=ps.executeQuery();
		
		int z=0;
		
			while(rs.next())
			{
			String s=	rs.getString("message");
				z=1;
					if(s.equals("Click here for test"))
					{
						out.print("<h2><a href='usertest.jsp' onClick=show()>"+s+"</a></h2>");
					}
					else
					{
					out.print("<h2>"+s+"</h2>");
					}
				}
		if(z==0)
		{
		
		out.print("<h2>Wait For Hr Response.....!!!</h2>");
					
		}
		}
			
	catch(Exception e)
	{
		System.out.println(e);
	}	
    %>
				<div class="content_item"></div>
			</div>

			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<% String un1 = (String)session.getAttribute("sessionuser");
		File fe = new File(getServletContext().getRealPath("/")+"/images/");
		String str[] = fe.list();
		int i=0,z=0;
		for(i=0 ; i<str.length ; i++)
		{
			String fn1 = str[i].substring(0,str[i].indexOf("."));
			if(fn1.equals(un1))
			{
			out.print("<h2><img src='images/"+un1+".jpg' width='120' height='120'></img> </h2>");
			z=1;
			break;
			}	
		}
			%>

					</div>
					<div class="sidebar_base"></div>
				</div>

				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<%out.print("<h2>"+su.toUpperCase()+"</h2>");%>
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
