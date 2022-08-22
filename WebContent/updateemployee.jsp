<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@page import="com.hr.management.ConstantUtil"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

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
		out.print(su.toUpperCase());

		String username=request.getParameter("username");
		
		%>
				</h1>
			</div>

			<div id="menubar">
				<ul id="menu">
					<li><a href="vaccancy.jsp">Vaccancy</a></li>
					<li><a href="#">Inbox</a></li>
					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<a href="showemployee.jsp">Show Employee</a> | | <a
					href="addemployee.jsp">Add Employee</a>
				<div class="content_item">
					<form method="post" action="updateemployeedata.jsp">
						<%
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from employee where empid='"+username+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{	
			%>
						<table>
							<h2>Employee Details</h2>
							<tr>

								<td style='font-family: comic sans ms; font-size: 15px'><b>Employee
										Id</b></td>
								<td><input type="text" class="textbox" name="empid"
									value=<%= rs.getString("empid") %>></td>
								<td><input type="hidden" name="emp"
									value=<%= rs.getString("empid") %>></td>

							</tr>
							<tr>

								<td style='font-family: comic sans ms; font-size: 15px'><b>Employee
										Name</b></td>
								<td><input type="text" class="textbox" name="empname"
									value=<%= rs.getString("empname") %>></td>

							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Employee
										Password</b></td>
								<td><input type="text" name="emppassword"
									value=<%= rs.getString("emppassword") %>></td>
							</tr>
							<tr>
								<td><h2>Personal Details</h2></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Father
										Name</b></td>
								<td><input type="text" name="empfather"
									value=<%= rs.getString("empfather") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Gender</b></td>
								<td><input type="radio" name="empgender"
									value=<%= rs.getString("empfather") %>>Male
										&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="empgender"
										value=<%= rs.getString("empfather") %>>Female</td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Date
										of birth </b></td>
								<td><input type="date" name="empdob"
									value=<%= rs.getString("empdob") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Mobile
								</b></td>
								<td><input type="text" name="empmobile"
									value=<%= rs.getString("empmobile") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>pincode
								</b></td>
								<td><input type="text" name="emppincode"
									value=<%= rs.getString("emppincode") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Address
								</b></td>
								<td><input type="text" name="empaddress"
									value=<%= rs.getString("empaddress") %>></td>
							</tr>
							<tr>
								<td><h2>Education Details</h2></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Qualification
								</b></td>
								<td><input type="text" name="empqualification"
									value=<%= rs.getString("empqualification") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Experience
								</b></td>
								<td><input type="text" name="empexperience"
									value=<%= rs.getString("empexperience") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Achievements
								</b></td>
								<td><input type="text" name="empachievement"
									value=<%= rs.getString("empexperience") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Skills
								</b></td>
								<td><input type="text" name="empskills"
									value=<%= rs.getString("empskills") %>></td>
							</tr>
							<tr>
								<td><h2>Job Details</h2></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Project
										Undertaken </b></td>
								<td><input type="text" name="empprojects"
									value=<%= rs.getString("empprojects") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Project
										Duration </b></td>
								<td><input type="text" name="empprojectduration"
									value=<%= rs.getString("empprojectduration") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Job
										Type </b></td>
								<td><input type="text" name="empjobtype"
									value=<%= rs.getString("empjobtype") %>></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Date
										of Joining </b></td>
								<td><input type="date" name="empdoj"
									value=<%= rs.getString("empdoj") %>></td>

							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Salary
								</b></td>
								<td><input type="text" name="empsalary"
									value=<%= rs.getString("empsalary") %>></td>
							</tr>

							<% 
					}
					}
					catch(Exception e)
					{
					} 
					%>
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
									<td><input type="submit" class="myButton"
										Value="    Update       "></td>


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
