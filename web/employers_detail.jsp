
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

<!-- jobs start here -->
	<div id="jobs">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- about-content start here -->
					<div class="jobs-content employee">
						<h1>EMPLOYER DETAIL</h1>
						<ul class="list-inline">
							<li>
                                                            <a href="home_user.jsp">Home</a>
							</li>
							<li>></li>
							<li>
								<a href="#">Employers</a>
							</li>
						</ul>
					</div>
				<!-- jobs-content end here -->
				</div>
			</div>
		</div>
	</div>
<!-- jobs end here -->


<!-- job start here -->
	<div id="job">
		<div class="container">
			<div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-12" style="padding-right: 0px;">
					<div class="graphic">
                                            <%
                                                Connection con=Config.connection.getConnection();
                                                PreparedStatement psmt=con.prepareStatement("select * from tbl_company where id='"+request.getParameter("id")+"'");
                                                ResultSet rs=psmt.executeQuery();
                                                rs.next();
                                                %>
						<h1><%=rs.getString("name")%></h1>
						<h5><%=rs.getString("organization")%></h5>
						<ul class="list-unstyled">
                                                    <li>
                                                        <table>
                                                            <tr>
                                                                <td style="padding-bottom: 40px;"><i class="fa fa-map-marker" aria-hidden="true"></i></td>
                                                                <td class="list-inline"><%=rs.getString("address")%></td>
                                                            </tr>
                                                        </table>
							</li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i> Open 10.00 AM<br>Close 06.00 PM
							</li>
						</ul>
<!--						<div class="map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d54772.59948130971!2d75.82775429415251!3d30.90658798036372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a83a410b99833%3A0xbe41bee863220706!2sThe+Multimedia+Designer!5e0!3m2!1sen!2sin!4v1490734019962" ></iframe>
						</div>-->
						<p><%=rs.getString("company_desc")%></p>
					</div>	
					<div class="career">
						<img src="image/left-banner.jpg" title="left-banner" alt="left-banner" class="img-responsive">
					</div>
				</div>
				
				<div class="col-md-9 col-sm-9 col-xs-12 padd0">
					<div class="col-md-12">
						<div class="employe-logo">
                                                    <img width="800" height="300" src="<%=rs.getString("logo_src").substring(64)%>" alt="logo" title="logo" class="">
						</div>
					</div>
					<%
                                            psmt=con.prepareStatement("select * from tbl_jobs where c_id='"+rs.getString("id")+"'");
                                            rs=psmt.executeQuery();
                                            int total=0;
                                            while(rs.next())
                                            {
                                                total++;
                                            }
                                        %>
					<div class="col-md-12">
						<div class="employe-vacancy">
							<p><%=total%> Vacancies Open Now</p>
						</div>
					</div>
                                                <%
                                                psmt=con.prepareStatement("select * from tbl_jobs where c_id='"+request.getParameter("id")+"'");
                                            rs=psmt.executeQuery();
                                                while(rs.next())
                                                {
                                                    %>
                                                    
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="product-box">
							<div class="image">
								<a href="#">
									<img class="img-responsive" src="<%=rs.getString("img_src").substring(64)%>" alt="p2" title="p2"/>
								</a>	
								<div class="buttons">
									<div class="open-down">
										<button type="button" class="rotate1">
											<i class="fa fa-link" aria-hidden="true"></i>
										</button>
										<button type="button" class="rotate1">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</div>
								</div>		
							</div>		
							<div class="matter">
								<h1><%=rs.getString("job_title")%></h1>
								<ul class="list-inline">
									<li>
										<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
									</li>
									<li>
										<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <%=rs.getString("job_location")%></a>
									</li>
								</ul>
								<p><%=rs.getString("job_desc")%> [...]</p>
							</div>
                                                        <center>
                                                            <button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs.getString("id")%>'">VIEW MORE</button></center>
						</div>
					</div>
                                                    <%
                                                }
                                                %>
					
				</div>
			</div>
		</div>
	</div>
<!-- job end here -->



<!-- Footer start here -->
<!-- Footer end here -->
<%@include file="footer_users.jsp" %>
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