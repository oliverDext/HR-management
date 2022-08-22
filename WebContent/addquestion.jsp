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
					<li><a href="question.jsp">Questions</a></li>

					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<a href="showquestion.jsp">Show question</a> | | <a
					href="addquestion.jsp">Add Question</a>
				<div class="content_item">
					<form method="post" action="addquestiondata.jsp">

						<table>
							<tr>

								<td style='font-family: comic sans ms; font-size: 15px'><b>Question</b></td>
								<td><input type="text" class="textbox" name="ques"
									size="80"></td>

							</tr>
							<tr>

								<td style='font-family: comic sans ms; font-size: 15px'><b>Option
										1</b></td>
								<td><input type="text" class="textbox" name="option1"></td>

							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Option
										2</b></td>
								<td><input type="text" class="textbox" name="option2"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Option
										3</b></td>
								<td><input type="text" class="textbox" name="option3"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Correct
										Answer</b></td>
								<td><input type="text" name="correct"></td>
							</tr>


							<br>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
									<td><input type="submit" class="myButton" Value="Enter"></td>
									<td><input type="Reset" class="myButton" Value="Reset"></td>

								</tr>
								</tr>
						</table>

					</form>
				</div>
			</div>



		</div>
		<!--end of site content-->

	</div>
	<!--end of main-->

</body>
</html>
