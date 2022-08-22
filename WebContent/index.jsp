<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
<title>HR Operation Manager</title>
<meta name="description" content="for company management" />
<meta name="keywords" content="hr operation manager" />
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
		$(document).ready(function() {
			/*
			*   Examples - images
			*/

			$("a#example1").fancybox();

			$("a#example2").fancybox({
				'overlayShow'	: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'elastic'
			});

			$("a#example3").fancybox({
				'transitionIn'	: 'none',
				'transitionOut'	: 'none'	
			});

			$("a#example4").fancybox({
				'opacity'		: true,
				'overlayShow'	: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'none'
			});

			$("a#example5").fancybox();

			$("a#example6").fancybox({
				'titlePosition'		: 'outside',
				'overlayColor'		: '#000',
				'overlayOpacity'	: 0.9
			});

			$("a#example7").fancybox({
				'titlePosition'	: 'inside'
			});

			$("a#example8").fancybox({
				'titlePosition'	: 'over'
			});

			/*
			*   Examples - various
			*/

			$("#various1").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});

			$("#various2").fancybox();

			$("#various3").fancybox({
				'width'				: '75%',
				'height'			: '75%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});

			$("#various4").fancybox({
				'padding'			: 0,
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});
		});
	</script>
</head>

<body>
	<div id="main">
		<div id="header">
			<div id="banner">
				<a href="#">ABC Software Pvt. Ltd.</a>
			</div>
			<div id="menubar">
				<ul id="menu">
					<li><a href="index.html">Home</a></li>
					<li><a href="career.jsp">Career</a></li>
					<li><a href="company.html">Company</a></li>
					<li><a href="products.html">Products</a></li>
					<li class="last"><a href="login.html">Login</a></li>
					<li class="last"><a href="admin.html">Admin</a></li>
					<li class="last"><a href="existing.html">Existing</a></li>
				</ul>
			</div>
		</div>
		<div id="site_content">
			<div id="content">
				<div class="content_item">
					<p>HR Operation Manager is software which satisfies the needs
						of the Human Resources Department of a company to manage
						employees' personal data (citizen identity number, name, surname,
						birthdate, birthplace, educational information etc.), annual
						leaves, payroll, trainings, skills, performance evaluation and so
						on. Our HR Operation Manager will meet the needs for managing the
						personal data, system authentication and authorization of an
						employee employee's data in a more appropriate and neat way. With
						the help of our project client will have better software to manage
						their personal data, control mechanism to authorize and
						authenticate for the employees' entry.</p>
					<p></p>
					<h4>HR</h4>
					<div
						style="float: left; border: 2px solid #CCC; margin-right: 10px; padding: 5px;">
						<a id="example4" href="images/hr.jpg"><img
							src="images/image.jpg" alt="image" /></a>
					</div>
					<p>Each employee will be added to the system by entering the
						personal data of an employee by HR. At the creating state, HROM
						will give an id to the newly added employee. After being added by
						HR, each employee has a right to be introduced to the system by
						admin. At this state, admin determines the role type of the user
						and this user is given a password automatically. At the entering
						state of the system, each user sees the same interface which asks
						a username and a password.</p>
					<p></p>
				</div>
			</div>
			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<h2>Contact</h2>
						<h4>
							<span style="color: #444; width: 55px; float: left;">Phone:</span>
							999999999
						</h4>
						<h4>
							<span style="color: #444; width: 55px; float: left;">Email:</span><a
								style="color: #06C4E6;" href="http://facebook.com">test@gmail.com</a>
						</h4>
						<a href="http://twitter.com/"><img src="icons/twitter.png"
							alt="twitter" /></a><a href="http://www.facebook.com/"><img
							src="icons/facebook.png" alt="facebook" /></a><a
							href="http://uk.linkedin.com/"><img src="icons/linkedin.png"
							alt="linked in" /></a>
					</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<h2>Latest Update</h2>
						<h4>January 2015</h4>
						<p>Technical support , Job summary ,The analist level is
							resposible for resolving incoming telephone request for
							assistance on standard commercial and proprietry application.</p>
					</div>
					<div class="sidebar_base"></div>
				</div>
			</div>
		</div>
		<div id="footer"></div>
	</div>
	<p style="float: left; padding: 0;">&nbsp;</p>
</body>
</html>
