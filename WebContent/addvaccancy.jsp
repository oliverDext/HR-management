<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN' "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
<title>addd</title>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html" ; charset=iso-8859-1 "/>
<link rel="stylesheet" type"text/css" herf="css/style.css" />
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
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script>
  function validate()
  {
    
    var jid=document.fr.jid.value;
    var profile=document.fr.profile.value;
    var type=document.fr.type.value;
    var experience=document.fr.experience.value;
    var opening=document.fr.opening.value;
    var location=document.fr.location.value;
    var salary=document.fr.salary.value;


    if(jid==null || jid=="")
    {
      alert("id can not be blank");
      return false;
    }
    else if(profile==null || profile=="")
    {
      alert("profile can not be blank");
      return false;
    }
    else if(type==null || type=="")
    {
       alert("type can not be blank");
       return false;
    }	
    else if(experience==null || experience=="")
    {
       alert("experience can not be blank");
       return false;
    }
    else if(opening==null || opening=="")
    {
       alert("opening can not be blank");
       return false;
    }
    else if(location==null || location=="")
    {
       alert("location can not be blank");
       return false;
    }
    else if(salary==null || salary=="")
    {
       alert("salary can not be blank");
       return false;
    }
    
 
  }
</script>
</head>
<body>
	<div id="main">
		<div id="header">
			<div id="banner">
				<h1>
					Welcome<% String su=(String)session.getAttribute("sessionadmin");
            out.print(su.toUpperCase());%>
				</h1>
			</div>
			<div id="menubar">
				<ul id="menu">
					<li><a href="vaccancy.jsp">Vaccancy</a></li>

					<li class="last"><a href='logout.jsp'>Logout</a></li>
				</ul>
			</div>
		</div>
		<div id="site_content">
			<div id="content">
				<a href="showvaccancy.jsp">Show Vaccancy</a> |<a
					href="deletevaccancy.jsp"> Delete Vaccancy </a> | <a href="#">Add
					Vaccancy</a>
				<div class="content_item">
					<form name="fr" onSubmit="return validate()" method="post"
						action="addvaccancydata.jsp">
						<table>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>ID</b></td>
								<td><input type="text" class="textbox"
									placeholder="enter Id" name="id"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Job
										profile</b></td>
								<td><input type="text" class="textbox"
									placeholder="enter profile" name="profile"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Job
										Type</b></td>
								<td><input type="text" placeholder="enter type" name="type"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Experience</b></td>
								<td><input type="text" placeholder="enter experience"
									name="experience"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Number
										of Opening</b></td>
								<td><input type="text" placeholder="enter opening"
									name="opening"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Job
										Location</b></td>
								<td><input type="text" placeholder="enter location"
									name="location"></td>
							</tr>
							<tr>
								<td style='font-family: comic sans ms; font-size: 15px'><b>Salary</b></td>
								<td><input type="text" placeholder="enter salary"
									name="salary"></td>
							</tr>
							<tr>
							<tr></tr>
							<tr></tr>
							<tr></tr>
							<tr>
								<td></td>
								<td><input class="myButton" type="submit" value="enter">
									<input class="myButton" type="reset" value="reset"></td>
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



