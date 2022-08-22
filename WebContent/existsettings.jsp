<%@page import="com.hr.management.ConstantUtil"%>
<%@ page import="java.sql.*"%>
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
		
	var request;  
	function changepass()  
	{  
		var op = document.mypassform.opw.value; 
		var np = document.mypassform.npw.value; 
		var url = "changepassword.jsp?opw="+op+"&npw="+np;  
  
		if(window.XMLHttpRequest)
		{  
		request = new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject)
		{ 	 	
		request = new ActiveXObject("Microsoft.XMLHTTP");  
		}  
  
		try  
		{  
		request.onreadystatechange = getInfo;  
		request.open("GET",url,true);  
		request.send();  
		}  
		catch(e)  
		{  
		alert("Unable to connect to server");  
		}  
	}  
  
	function getInfo()
	{  
		if(request.readyState==4)
		{  
		var val=request.responseText;  
		document.getElementById('pwid').innerHTML=val;  
		}  
	}  	


	var request1;  
	function changeprofile()  
	{  
		var op = document.mypassform.opw.value; 
		var np = document.mypassform.npw.value; 
		var url = "changepassword.jsp?opw="+op+"&npw="+np;  
  
		if(window.XMLHttpRequest)
		{  
		request1 = new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject)
		{ 	 	
		request1 = new ActiveXObject("Microsoft.XMLHTTP");  
		}  
  
		try  
		{  
		request1.onreadystatechange = getInfo1;  
		request1.open("GET",url,true);  
		request1.send();  
		}  
		catch(e)  
		{  
		alert("Unable to connect to server");  
		}  
	}  
  
	function getInfo1()
	{  
		if(request1.readyState==4)
		{  
		var val=request1.responseText;  
		document.getElementById('pwid').innerHTML=val;  
		}  
	}  	

	function show_table()
	{
	  document.getElementById('table1').style.display='block';
	}

	function hide_table()
	{
	  document.getElementById('table1').style.display='none';
	}
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
					<li><a href="#" onclick="table1()">Profile</a></li>

					<li><a href="project.jsp">Projects</a></li>
					<li><a href="feedback.jsp">Feedback</a></li>

					<li class="last"><a href="logout.jsp">Logout</a></li>
				</ul>
			</div>

		</div>
		<!--end of header-->

		<div id="site_content">
			<div id="content">
				<div class="content_item">


					<form action="existphoto.jsp" method="post"
						enctype="multipart/form-data">
						<table>
							<tr>
								<td><h3>Load Photo</h3></td>
							</tr>
							<tr>
								<td><input type="file" id="file" name="file1"
									accept="image/*" multiple="muliple" required /></td>
							</tr>
							<tr>
								<td><input class="myButton" type="submit"
									value="Load Photo" /></td>
							</tr>
						</table>
					</form>
					<br>
						<hr>

							<form name="mypassform">
								<table>
									<tr>
										<td><h3>Change Password</h3></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td>Old Password</td>
										<td><input type="password" name="opw" /></td>
										<td></td>
									</tr>
									<tr>
										<td>New Password</td>
										<td><input type="password" name="npw" /></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td><a class="myButton" href="#" onclick="changepass()">&nbsp;&nbsp;Change
												Password&nbsp;&nbsp;</a></td>
										<td><span id="pwid"></span></td>
									</tr>
								</table>
							</form>
							<br>
								<hr>

									<form>
										<table>
											<tr>
												<td><h3>Change Profile</h3></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td><a class="myButton" href="#" onclick="show_table()">Show
														Profile</a></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td><a class="myButton" href="#" onclick="hide_table()">&nbsp;Hide
														Profile&nbsp;</a></td>
												<td></td>
												<td></td>
											</tr>
										</table>
									</form>

									<span> <%
			try
			{
			String profilest = (String)session.getAttribute("profilest");	
			if(profilest.equals("1"))
			{
				out.print("record successfully updated");	
			}
			else
			{
				out.print("record not updated");
			}
			}
			catch(Exception e)
			{
			}
		%>
									</span> <%
			String en=null,fn=null,gn=null,dob=null,pin=null,add=null,ach=null,ql=null,ex=null,sk=null,mb=null;
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
			PreparedStatement pst = con.prepareStatement("select * from employee where empname='"+su+"'");
			ResultSet rs = pst.executeQuery();
			if(rs.next()==true)
			{
				en = rs.getString("empname").toUpperCase();
				fn = rs.getString("empfather");
				gn = rs.getString("empgender");
				mb = rs.getString("empmobile");
				pin = rs.getString("emppincode");
				add = rs.getString("empaddress");
				ql = rs.getString("empqualification");
				ex = rs.getString("empexperience");
				ach = rs.getString("empachievement");
				sk = rs.getString("empskills");
			}
			con.close();
		}
		catch(Exception e)
		{	
		}
		%>

									<table id="table1" style="display: none">
										<form action="updateprofile.jsp" method="post">
											<tr>
											</tr>
											<tr>
											</tr>
											<tr>
											</tr>
											<tr>
											</tr>
											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>User Name : </b></td><td><b>"+en+"<b></td><td></td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Father Name</b></td><td><input size='30' type='text' name='father' value='"+fn+"' /></td><td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Mobile</b></td><td><input size='30' type='text' name='mobile' value='"+mb+"' /></td><td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Pin Code</b></td><td><input size='30' type='text' name='pin' value='"+pin+"' /></td><td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Address</b></td><td><input size='30' type='text' name='address' value='"+add+"' /></td><td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Qualification</b></td><td><input size='30' type='text' name='qly' value='"+ql+"' /></td><td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Experience</b></td><td><input size='30' type='text' name='experience' value='"+ex+"' /></td><td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Achievement</b></td><td><input size='30' type='text' name='achievement' value='"+ach+"' /></td><td>"); %>
											</tr>

											<tr>
												<% out.print("<td style='font-family:comic sans ms; font-size:15px'><b>Skills</b></td><td><input size='30' type='text' name='skills' value='"+sk+"' /></td><td>"); %>
											</tr>

											<tr>
												<td></td>
												<td><input type="submit" value="Update"
													class="myButton" /></td>
												<td></td>
											</tr>
										</form>
									</table>
				</div>
			</div>

			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">

						<% String un1 = (String)session.getAttribute("sessionexist");
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
		if(z==0)
		{
		out.print("<h2><img src='images/default.png' width='80' height='80'></img> </h2>");
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
