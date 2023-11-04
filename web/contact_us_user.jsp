
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
</head>
<body>
<!-- top start here -->
    <%
        if(session.getAttribute("role").equals("company"))
        {
            %>
            <%@include file="header_company.jsp" %>
            <%
        }
        else{
            %>
            <%@include file="header_seeker.jsp" %>
            <%
        }
    %>
<!-- header end here -->

<!-- contact start here -->
	<div id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- contact-content start here -->
					<div class="contact-content">
						<h1>Contact Us</h1>
						<ul class="list-inline">
							<li>
                                                            <%
                                                                if(session.getAttribute("role").equals("company"))
                                                                {
                                                                    %>
                                                                    <a href="company_home.jsp">Home</a>
                                                                    <%
                                                                }
                                                                else{
                                                                    %>
                                                                    <a href="home_user.jsp">Home</a>
                                                                    <%
                                                                }
                                                            %>
							</li>
							<li>></li>
							<li>
								<a href="contact.html">Contact us</a>
							</li>
						</ul>
					</div>
				<!-- contact-content end here -->
				</div>
			</div>
		</div>
	</div>
<!-- contact end here -->
<%
                                                                Connection con=Config.connection.getConnection();
                                                                PreparedStatement psmt;
                                                                ResultSet rs;
                                                                                                                               
                                                                %>

<!-- contact-form start here -->
	<div id="contact-form">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-8 col-xs-12">
					<!-- form start here -->
					<div class="form">
						<div class="border"></div>
						<div class="border1"></div>
						<form class="form-horizontal" method="post">
							<fieldset>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Your Name</label>
										<input class="form-control" placeholder="Enter your name" id="input-name" value="" name="jobname" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>Your Email</label>
										<input class="form-control" id="input-email" placeholder="you@yourdomain.com" value="" name="email" required="" type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<label>Subject</label>
										<input class="form-control" id="input-subject" placeholder="" value="" name="email" required="" type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<label>Message</label>
										<textarea class="form-control" id="input-enquiry" rows="10" name="enquiry" placeholder="" required=""></textarea>
									</div>
								</div>
								
								
								<div class="button">
									<button type="submit" value="Submit" class="btn btn-primary btnus">SEND MESSAGE</button>
								</div>
							</fieldset>
						</form>
					</div>
					<!-- form end here -->
				</div>
				
				<div class="col-md-4 col-sm-4 col-xs-12">
					<!-- detail start here -->
					<div class="detail col-md-12">
						<div class="border"></div>
						<div class="border1"></div>
						<ul class="list-unstyled">
							<li>
								<h5>Address</h5>
								<i class="fa fa-map-marker" aria-hidden="true"></i>
								<a href="contact.html"><span>123 Main Street,Anytown,LDH 12345 INDIA</span></a>
							</li>
							<li>
								<h5>Phone</h5>
								<i class="fa fa-phone" aria-hidden="true"></i>
								<a href="contact.html"><span>+1800-123-1234</span></a>
							</li>
							<li>
								<h5>Email</h5>
								<i class="fa fa-envelope" aria-hidden="true"></i>
								<a href="contact.html"><span>Support@jobportal.com</span>
								</a>
							</li>
							<li>
								<h5>Skype</h5>
								<i class="fa fa-skype" aria-hidden="true"></i>
								<a href="contact.html"><span>Jobs.2017</span></a>
							</li>
						</ul>
					</div>
					<!-- detail end here -->
					<img src="image/support.jpg" class="img-responsive" alt="support" title="support">
				</div>
				
			</div>
		</div>
		
		<div class="map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.7657660242967!2d80.22743231398425!3d13.050576216673507!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a5266f65e693e39%3A0xa0665cd2c0507d58!2sJob-Portal-Developers!5e0!3m2!1sen!2s!4v1497251299743" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
		
	</div>
<!-- contact-form end here -->


<!-- Footer start here --><%@include file="footer_users.jsp" %>
<!-- Footer end here -->
<!-- jquery -->
<script src="js/jquery.2.1.1.min.js" type="text/javascript"></script>
<!-- bootstrap js -->
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!--bootstrap select-->
<script src="js/dist/js/bootstrap-select.js" type="text/javascript"></script>
<!-- owlcarousel js -->
<script src="js/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<!--internal js-->
<script src="js/internal.js" type="text/javascript"></script>
<!-- color switcher-->
<script src="js/switcher.js" type="text/javascript"></script>
</body>
</html>