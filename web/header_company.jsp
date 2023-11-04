
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home</title>
<!-- Bootstrap stylesheet -->
<link href="New folder/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i,700%7CSource+Sans+Pro:300,400,600,700" rel="stylesheet"> 
<!-- stylesheet -->
<link href="New folder/css/style.css" rel="stylesheet" type="text/css"/>
<link href="New folder/css/style_cyan.css" title="style_cyan" rel="alternate stylesheet" type="text/css"/>
<link href="New folder/css/style_red.css" title="style_red" rel="alternate stylesheet" type="text/css"/>
<link href="New folder/css/style_green.css" title="style_green" rel="alternate stylesheet" type="text/css"/>
<link href="New folder/css/style_blue.css" title="style_blue" rel="alternate stylesheet" type="text/css"/>
<!-- font-awesome -->
<link href="New folder/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- crousel css -->
<link href="New folder/js/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" />
<!--bootstrap select-->
<link href="New folder/js/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
<link href="startbootstrap-freelancer-gh-pages/vendor/font-awesome/fonts/../css/font-awesome.min.css" rel="stylesheet" type="text/css">

<style>
    body{
        padding-right: 0px !important;
    }
</style>
</head>
<body>
<!-- top start here -->
	<div id="top">
		<!-- top container start here-->
		<div class="container">
			<div id="top-links">
				<ul class="list-inline pull-left button">
					<li>
						<a href="about.html" data-toggle="modal" data-target="#myModal1">ABOUT US</a>
                                                <div class="modal fade" id="myModal1" role="dialog">
        <div class="modal-dialog" style="padding-top: 180px;width: 1000px;">
                                                <div class="modal-content">
                                        <form method="post">
                                         <div class="modal-header" style="padding-top: 5px;">
                                                 <h2 style="color: black">About Us</h2>
                                        </div>
                                            
                                          <div class="modal-body" style="color:black;padding-top: 0px;">
                                      
                                              <div id="abouts" style="padding-top: 0px;">
				<div>
					 <!--about-detail start here--> 
                                        <div class="about-detail" style="padding-top: 0px;"><br>
						<p>JobPortal.com is India's most innovative and fastest growing Online Job Portal. Launched in 2016, within a short span of 1 years, JobPortal.com has crossed the 1.9 crore candidate landmark and has more than 3 lakh Latest job Vacancies on site. Today, JobPortal.com is changing the landscape of hiring, by integrating personal and social networks of candidates for enhancing the recruitment process ? making it the world?s first job Portal site to do so. JobPortal.com now enables a recruiter to reach out to the personal network of employees and their connections, thus, giving them access to a vast network of good quality candidates.</p>
					</div>	
<!--					 about-detail end here 
					
					 inner start here -->
					<div class="row inner">
						<div class="col-md-6 col-sm-6 col-xs-12">
                                                    <img src="image/about-image.jpg" class="img-responsive" alt="about us" title="about us">
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 paddleft">
							<p>
							JobPortal has a large reach through its print product, JobPortal Jobs - the Tuesday Job supplement of Hindustan Times - making it the only recruitment product with an integrated print and online offering. JobPortal also nurtures thought leadership on issues concerning the new age Human Resource Management through the <a>Hindustan Times JobPortal HR Conclave</a> series. JobPortal thus continues to offer significantly enhanced features and a better end-user experience for both candidates and recruiters. JobPortal is a part of HT Media Limited. HT Media is one of India's largest and most respected names in the media industry, with its footprint across print, digital and radi.
							</p>
						</div>
					</div>	
<!--					 inner end here 
					
					 mission start here -->
					<div class="mission">
						<h1>Our Mission</h1>
                                                <p>Our mission is to help india become a global startup hub by 2020, working together with all interested parties we can make india the best place in the world to establish a high growth startup. This in turn will help lead to india becoming a leading global destination for high impact startups that want to scale up rapidly, effectively a <a>Startup Hub</a>.</p>
					</div>
<!--					 mission end here 
					
					 team start here -->
					<div class="team">
						<h1>Our Team</h1>
                                                <center>
						<ul class="list-inline">
							<li>
								<div class="client">
                                                                    <img src="image/image1.png" style="border-radius: 50%;" class="img-responsive" alt="image1" title="image1" height="150" width="150">
									<h5>Jainish Shah</h5>
									<p>Graphics Designer</p>
									<ul class="list-inline soical">
										<li>
											<a href="https://www.facebook.com/jainishs" target="_blank">
												<i aria-hidden="true" class="fa fa-facebook"></i>
											</a>
										</li>
										<li>
											<a href="https://twitter.com/" target="_blank">
												<i aria-hidden="true" class="fa fa-twitter"></i>
											</a>
										</li>
										<li>
											<a href="https://plus.google.com/" target="_blank">
												<i aria-hidden="true" class="fa fa-google"></i>
											</a>
										</li>
										<li>
											<a href="https://www.instagram.com/jainish__shah/" target="_blank">
												<i aria-hidden="true" class="fa fa-instagram"></i>
											</a>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="client">
									<img src="image/image2.png" class="img-responsive" alt="image2" title="image2">
									<h5>Disha Dave</h5>
									<p>Graphics Designer </p>
									<ul class="list-inline soical">
										<li>
											<a href="https://www.facebook.com/" target="_blank">
												<i aria-hidden="true" class="fa fa-facebook"></i>
											</a>
										</li>
										<li>
											<a href="https://twitter.com/" target="_blank">
												<i aria-hidden="true" class="fa fa-twitter"></i>
											</a>
										</li>
										<li>
											<a href="https://plus.google.com/" target="_blank">
												<i aria-hidden="true" class="fa fa-google"></i>
											</a>
										</li>
										<li>
											<a href="https://www.instagram.com/diisha_dave/" target="_blank">
												<i aria-hidden="true" class="fa fa-instagram"></i>
											</a>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="client">
                                                                    <img src="image/image3.png" style="border-radius: 50%;" class="img-responsive" alt="image3" title="image3" height="120" width="120" >
									<h5>Kavisha Bhavsar</h5>
									<p>Graphics Designer </p>
									<ul class="list-inline soical">
										<li>
											<a href="https://www.facebook.com/kavi.bhavsar.54" target="_blank">
												<i aria-hidden="true" class="fa fa-facebook"></i>
											</a>
										</li>
										<li>
											<a href="https://twitter.com/" target="_blank">
												<i aria-hidden="true" class="fa fa-twitter"></i>
											</a>
										</li>
										<li>
											<a href="https://plus.google.com/" target="_blank">
												<i aria-hidden="true" class="fa fa-google"></i>
											</a>
										</li>
										<li>
											<a href="https://www.instagram.com/kavisha_bhavsar22/" target="_blank">
												<i aria-hidden="true" class="fa fa-instagram"></i>
											</a>
										</li>
									</ul>
								</div>
							</li>
						</ul>
                                                    </center>
					</div>
					 <!--team end here--> 
				</div>
	</div>        
                                        </div>
                                        <div class="modal-footer">
                                             <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                                        </div>
                                          </form>
                                                </div></div></div>
					</li>
					<li>
						<a href="#">EMAIL : INFO@JOBPORTAL.COM</a>
					</li>
				</ul>
				<ul class="list-inline pull-right icon">
					<li>
						<a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://in.pinterest.com/" target="_blank"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- top container end here-->
	</div>
<!-- top end here -->
	
<!-- header start here-->
	<header>
		<!-- header container start here-->
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-3 col-xs-12">
					<!-- logo start here-->
					<div id="logo">
                                            <a href="company_home.jsp">
							<img class="img-responsive logochange" alt="logo" title="logo" src="image/logo.png" />
						</a>
					</div>
					<!-- logo end here-->
				</div>
			    <div class="col-sm-6 col-md-6 col-xs-12 padd0">
					<!-- menu start here-->
					<nav class="navbar" id="menu">
						<div class="navbar-header">
							<span class="menutext visible-xs">Menu</span>
							<button data-target=".navbar-ex1-collapse" data-toggle="collapse" class="btn btn-navbar navbar-toggle" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
						</div>
						<div class="collapse navbar-collapse navbar-ex1-collapse padd0">
							<ul class="nav navbar-nav pull-left">
								<li class="dropdown">
                                                                    <a class="dropdown-toggle" href="company_home.jsp">HOME</a>
								</li>
								<li class="dropdown">
                                                                    <a class="dropdown-toggle" href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=">Jobs</a>
								</li>
								<li class="dropdown">
                                                                    <a class="dropdown-toggle" href="http://localhost:8080/Job_protal/list_company_user.jsp">Employers</a>
								</li>
                                                                <li class="dropdown">
                                                                    <a class="dropdown-toggle" href="contact_us_user.jsp">CONTACT US</a>
								</li>
								<li class="dropdown">
                                                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="fa fa-fw fa-user">&nbsp;&nbsp;</i><%= session.getAttribute("uname") %>
										&nbsp;<span class="fa fa-angle-down"></span>
									</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
                                                                                            <li>
                                                                                                <a href="my_profile_company.jsp"><i class="fa fa-fw fa-gear"></i> My Profile</a>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="logout_success"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                                                                                            </li>
                                                                                        </ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</nav>
					<!-- menu end here -->
				</div>
			    <div class="col-sm-3 col-md-3 col-xs-12 hidden-xs">
					<!-- button-login start here -->
					<div class="button-login pull-right">
						<!--<button type="button" class="btn btn-default btn-lg" onclick="location.href='logout_success'">Logout</button>-->
					</div>
					<!-- button-login end here -->
				</div>
			</div>
		</div>
		<!-- header container end here -->
	</header>
<!-- header end here -->

<!-- slider start here -->
	
<!-- Footer end here -->
<!-- jquery -->
<script src="New folder/js/jquery.2.1.1.min.js" type="text/javascript"></script>
<!-- bootstrap js -->
<script src="New folder/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!--bootstrap select-->
<script src="New folder/js/dist/js/bootstrap-select.js" type="text/javascript"></script>
<!-- owlcarousel js -->
<script src="New folder/js/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<!--internal js-->
<script src="New folder/js/internal.js" type="text/javascript"></script>
<!-- color switcher-->
<script src="New folder/js/switcher.js" type="text/javascript"></script>
</body>
</html>
