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

</script>
</head>

<body>


	<%

			String username = request.getParameter("username");
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);			
			PreparedStatement ps = con.prepareStatement("delete from user where loginname='"+username+"'");
			int z=ps.executeUpdate();
			if(z>0)
			{
		
			out.print("<h1>You have successfully deleted </h1>"); 
		%>
	<jsp:include page="userdetails.jsp"></jsp:include>
	<%
		}
		}
	catch(Exception e)
	{
		System.out.println(e);
	}	
		%>
	</div>
	</div>


	<div class="sidebar_container">
		<div class="sidebar">
			<div class="sidebar_top"></div>

			<div class="sidebar_base"></div>
		</div>


	</div>

	</div>
	<!--end of site content-->

	</div>
	<!--end of main-->

</body>
</html>
