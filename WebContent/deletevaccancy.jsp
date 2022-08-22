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
<link rel="stylesheet" type="text/css" href="css/table.css" />

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
					<form method="post" action="deletevaccancydata.jsp">

						<table>
							<tr>

								<td style='font-family: comic sans ms; font-size: 15px'><b>Enter
										Id</b></td>
								<td><input type="text" class="textbox"
									placeholder="Enter the job id to delete" name="id"></td>
							</tr>
							<tr>
								<td><input type="submit" value="delete" class="myButton">
							</tr>
							<table>
								</form>
								</div>
								</div>



								</div>
								<!--end of site content-->

								</div>
								<!--end of main-->
</body>
</html>
