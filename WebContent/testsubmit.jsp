<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
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
					<li><a href="index.html">Home</a></li>


					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<div class="content_item">

					<%
			String s[]=new String [50];
			String s1=request.getParameter("t1");
			int count=Integer.parseInt(s1);
			
			for(int i=1;i<=count-1;i++)
			{
				
			  s[i]=request.getParameter(String.valueOf(i));
			}
			
			
			out.print("<h3>U have Successfully Completed Test</h3>");
			
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from question");
			ResultSet rs = ps.executeQuery();
			ArrayList al= new ArrayList();
			while(rs.next())
			{
			
				al.add(rs.getString("correct"));
			
			}
			
			
			int correct=0;
			int wrong=0;
			
			for(int i=0;i<al.size();i++)
			{
				
				if(s[i+1].equals(al.get(i)))
				{
				
				correct++;
				
				}
				else
				{
				wrong++;
				}
				
			}
			out.print("<h1>You have Scored "+correct+"  out of  "+count+"</h1>");
			out.print("<h2>wait for Reply from Company...</h2>");
			PreparedStatement ps1=con.prepareStatement("insert into answer values(?,?,?)");
			ps1.setString(1,su);
			
			ps1.setString(2,String.valueOf(correct));
			ps1.setString(3,String.valueOf(wrong));
			int z=ps1.executeUpdate();
			
			
						
			PreparedStatement ps3 = con.prepareStatement("update  message set  message=? where loginname='"+su+"'");
			
			String message="You have given test...!!! wait ";
			
			ps3.setString(1,message);
			
			
			int x=ps3.executeUpdate();
		
		}
			catch(Exception e)
			{}
			
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
