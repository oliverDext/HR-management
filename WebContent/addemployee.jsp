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
					<li><a href="adminsettings.jsp">Setting</a></li>

					<li><a href="userdetails.jsp">User Details</a></li>
					<li><a href="vaccancy.jsp">Vaccancy</a></li>
					<li><a href="projects.jsp">Projects</a></li>
					<li><a href="question.jsp">UserTest</a></li>
					<li><a href="employee.jsp">Employee</a></li>
					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<a href="showemployee.jsp">Show Employee</a> |<a
					href="updateemployee.jsp"> Update Employee </a> | <a
					href="addemployee.jsp">Add Employee</a>
				<div class="content_item">
					<form method="post" action="addemployeedata.jsp">

						<table>
							<h2>Employee Details</h2>
							<tr>

								<td style='font-family: comic sans ms; font-size: 15px'><b>Employee
										Id</b></td>
								<td><input type="text" class="textbox" name="empid"></td>

							</tr>
							<tr>

								<td style='font-family: comic sans ms; font-size: 15px'><b>Employee
										Name</b></td>
								<td><input type="text" class="textbox" name="empname"></td>

							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Employee
										Password</b></td>
								<td><input type="text" name="emppassword"></td>
							</tr>
							<tr>
								<td><h2>Personal Details</h2></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Father
										Name</b></td>
								<td><input type="text" name="empfather"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Gender</b></td>
								<td><input type="radio" name="empgender" value="male">Male
										&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="empgender"
										value="female">Female</td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Date
										of birth </b></td>
								<td><input type="date" name="empdob"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Mobile
								</b></td>
								<td><input type="text" name="empmobile"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>pincode
								</b></td>
								<td><input type="text" name="emppincode"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Address
								</b></td>
								<td><input type="text" name="empaddress"></td>
							</tr>
							<tr>
								<td><h2>Education Details</h2></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Qualification
								</b></td>
								<td><input type="text" name="empqualification"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Experience
								</b></td>
								<td><input type="text" name="empexperience"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Achievements
								</b></td>
								<td><input type="text" name="empachievement"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Skills
								</b></td>
								<td><input type="text" name="empskills"></td>
							</tr>
							<tr>
								<td><h2>Job Details</h2></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Project
										Undertaken </b></td>
								<td><input type="text" name="empprojects"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Project
										Duration </b></td>
								<td><input type="text" name="empprojectduration"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Job
										Type </b></td>
								<td><input type="text" name="empjobtype"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Date
										of Joining </b></td>
								<td><input type="date" name="empdoj"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Salary
								</b></td>
								<td><input type="text" name="empsalary"></td>
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
