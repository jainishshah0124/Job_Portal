
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
<script type="text/javascript">
    function go()
    {
        window.open("search_result.jsp","_top");
    }
</script>
</head>
<body>
<!-- header end here -->
<!-- slider start here -->
    
    <%@include file="header_seeker.jsp" %>
	<div class="slideshow owl-carousel">
		<div class="item">
			<img src="image/slider-1.jpg" alt="slider" title="slider" class="img-responsive"/>
			<div class="slide-detail">
				<div class="container">
					<div class="slider-caption">
						<div class="off"></div>
						<h1>Find Your Job</h1>
                                                <%
                                                    Connection con=Config.connection.getConnection();
                                                    PreparedStatement psmt=con.prepareStatement("select * from tbl_sector");
                                                    ResultSet rs=psmt.executeQuery();
                                                %>
                                                <form action="search_result.jsp">
                                                    <input type="hidden" value="job_title" name="orderby"/>
						<div class="col-md-4 col-sm-4 col-xs-12 paddleft">
                                                    <select class="form-control" name="ddl_sector">
                                                        <option value="0">Select Sector</option>
                                                    <%
                                                        while(rs.next())
                                                        {
                                                            %>
                                                            <option><%=rs.getString("name")%></option>
                                                            <%
                                                        }
                                                    %>
                                                    </select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="form-control" name="ddl_location">
								<option value="0">Select Location</option>
                                                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                                <option value="Assam">Assam</option>
                                                                <option value="Bihar">Bihar</option>
                                                                <option value="Chandigarh">Chandigarh</option>
                                                                <option value="Chhattisgarh">Chhattisgarh</option>
                                                                <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                                <option value="Daman and Diu">Daman and Diu</option>
                                                                <option value="Delhi">Delhi</option>
                                                                <option value="Goa">Goa</option>
                                                                <option value="Gujarat">Gujarat</option>
                                                                <option value="Haryana">Haryana</option>
                                                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                                <option value="Jharkhand">Jharkhand</option>
                                                                <option value="Karnataka">Karnataka</option>
                                                                <option value="Kerala">Kerala</option>
                                                                <option value="Lakshadweep">Lakshadweep</option>
                                                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                                <option value="Maharashtra">Maharashtra</option>
                                                                <option value="Manipur">Manipur</option>
                                                                <option value="Meghalaya">Meghalaya</option>
                                                                <option value="Mizoram">Mizoram</option>
                                                                <option value="Nagaland">Nagaland</option>
                                                                <option value="Orissa">Orissa</option>
                                                                <option value="Pondicherry">Pondicherry</option>
                                                                <option value="Punjab">Punjab</option>
                                                                <option value="Rajasthan">Rajasthan</option>
                                                                <option value="Sikkim">Sikkim</option>
                                                                <option value="Tamil Nadu">Tamil Nadu</option>
                                                                <option value="Tripura">Tripura</option>
                                                                <option value="Uttaranchal">Uttaranchal</option>
                                                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                                <option value="West Bengal">West Bengal</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12 paddright">
							<div class="input-group">
								<input name="search" class="form-control" value="" placeholder="Search" type="text">
								<span>
                                                                    <!--<input type="submit"/>-->
                                                                    <button style="left: 283px;" type="submit" class="btnsrch" onclick="go()"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</div>
                                                </form>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- slider end here -->

<!-- featured start here -->
	<div id="featured">
		<div class="container">
			<div class="row">
				<!-- featured-jobs start here -->
				<div class="featured-jobs">
					<h1>FEATURED JOBS</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- featured-jobs end here -->
                                <% 
                                    psmt=con.prepareStatement("select * from tbl_jobs");
                                    rs=psmt.executeQuery();
                                    int a=0;
                                    rs.last();
                                    rs.next();
                                    while(rs.previous()){
                                        a++;
                                        if(a==5)
                                        {
                                            break;
                                        }
                                        %>
                                        
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
							<a href="jobs.html">
                                                            <img class="img-responsive" src="<%=rs.getString("img_src").substring(64)%>" alt="p1" title="p1"/>
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
                                                    <h1><%=rs.getString(3)%></h1>
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
                                                <div class="center"><button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs.getString(1)%>'">View More</button>
                                                </div></div>
				</div>
                                        <%
                                    }
                                %>
				
			</div>
		</div>
	</div>
<!-- featured end here -->

<!-- browse start here -->
	<div class="browse">
		<div class="container">
			<div class="row">
				<!-- featured-jobs start here -->
				<div class="browse-jobs">
					<h1>BROWSE JOBS</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- featured-jobs end here -->
				
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Information Technology">
							<div class="boxbor">
								<i class="fa fa-desktop" aria-hidden="true"></i>
								<span>Information Technology</span>
							</div>
						</a>
					</div>	
				</div>
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Banking">
							<div class="boxbor">
								<i class="fa fa-university" aria-hidden="true"></i>
								<span>Banking</span>
							</div>
						</a>
					</div>
				</div>
				
			    <div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Accounting">
							<div class="boxbor">
							<i class="fa fa-money" aria-hidden="true"></i>
								<span>Accounting</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Sales & marketing">
							<div class="boxbor">
								<i class="fa fa-bar-chart" aria-hidden="true"></i>
									<span>Sales & marketing</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Digital & Creative">
							<div class="boxbor">
								<i class="fa fa-tachometer" aria-hidden="true"></i>
								<span>Digital & Creative</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Management">
							<div class="boxbor">
							<i class="fa fa-suitcase" aria-hidden="true"></i>
								<span>Management</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Legal Jobs">
							<div class="boxbor">
								<i class="fa fa-gavel" aria-hidden="true"></i>
									<span>Legal Jobs</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="http://localhost:8080/Job_protal/search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location=0&search=Retail">
							<div class="boxbor">
							<i class="fa fa-tags" aria-hidden="true"></i>
								<span>Retail</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- browse end here -->

<!-- testimonial start here -->
<div id="testimonial" style="background:url(image/testi-bg.jpg);width: auto">
		<div class="container">
			<div class="row">
				<!-- testimonial-jobs start here -->
				<div class="testimonial-jobs">
					<h1>TESTIMONIAL</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- testimonial-jobs end here -->
				<div id="testimonials" class="col-md-12 col-sm-12 col-xs-12 owl-carousel">
				<%
                                    psmt=con.prepareStatement("select * from tbl_testimonial");
                                    rs=psmt.executeQuery();
                                    ResultSet rs1;
                                    while(rs.next())
                                    {
                                     psmt=con.prepareStatement("select * from tbl_company where email='"+rs.getString(2)+"'");
                                     rs1=psmt.executeQuery();
                                     rs1.next();
                                    %>
                                        <div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="<%=rs1.getString("logo_src").substring(64)%>" class="img-responsive" alt="pic-1" title="pic-1" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
                                                                <%
                                                                if(rs.getString(3).length()>145)
                                                                {
                                                                    %>
                                                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(3).substring(0,145)%></p>
                                                                    <%
                                                                }
                                                                else{%>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(3)%></p><%}%>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
                                    <%}%>
					<div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="image/pic-1.png" class="img-responsive" alt="pic-1" title="pic-1" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
                                                                <p>There are many variations of passages of Lorem Ipsum available, temporary  type  words </p>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- testimonial end here -->

<!-- blog start here -->
<!-- blog end here -->


<!-- latest start here -->
<!-- latest end here -->


<!-- partner start here -->
<!-- partner end here -->

<!-- Footer start here -->
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
