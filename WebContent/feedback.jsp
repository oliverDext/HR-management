<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
<title>Hr operation</title>
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
					<% String su = (String)session.getAttribute("sessionexist");	
		out.print(su.toUpperCase()); %>
				</h1>
			</div>

			<div id="menubar">
				<ul id="menu">
					<li><a href="existsettings.jsp">Setting</a></li>
					<li><a href="project.jsp">Projects</a></li>
					<li><a href="feedback.jsp">Feedback</a></li>

					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<form name="myfrm" method="post" action="savefeedback.jsp">
					<table>
						<tr>
							<td><b>Comment</b>
							<td>
						</tr>
						<tr>
							<td><textarea Rows="10" Cols="80" name="fd"></textarea></td>
						</tr>

						<tr></tr>
						<tr></tr>
						<tr></tr>
						<tr></tr>

						<tr></tr>
						<tr></tr>
						<tr></tr>
						<tr></tr>
						<tr>
							<td><input type="submit" class="myButton" name="submit"></td>
						</tr>
						</div>
						<!--end of site content-->

						</div>
						<!--end of main-->
</body>
</html>
