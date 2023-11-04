
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
						<h1>EMPLOYERS</h1>
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
                            <div class="col-md-3 col-sm-3 col-xs-12 hidden-xs" style="padding-right: 10px;">
					<div class="left left1">
						<div class="job-candidate">
							<h1>FEATURED COMPANIES</h1>
							<div class="border"></div>
							<div class="border1"></div>
						</div>
                                                <%
                                                    Connection con=Config.connection.getConnection();
                                                    PreparedStatement psmt=con.prepareStatement("select * from tbl_company");
                                                    ResultSet rs=psmt.executeQuery();
                                                    rs.last();
                                                    int index=0;
                                                %>
						<div id="latestsfeat" class="owl-carousel">
                                                    <%
                                                        do
                                                        {
                                                            index++;
                                                            if(index==6)
                                                            {
                                                                break;
                                                            }
                                                            if(rs.getString("email").equals(session.getAttribute("uname").toString()))
                                                            {
                                                                index--;
                                                            }
                                                            else{
                                                            %>
                                                            <div class="item">
								<div class="col-sm-12 col-xs-12">
									<div class="candidate">
										<img src="<%=rs.getString("logo_src").substring(64)%>" class="img-responsive" alt="cand-1" title="cand-1" />
										<h1><%=rs.getString("organization")%></h1>
									</div>
								</div>
                                                            </div>	
                                                            <%
                                                            }
                                                        }while(rs.previous());
                                                    %>
						</div>
					</div>	
					<div class="career">
						<img src="image/left-banner.jpg" title="left-banner" alt="left-banner" class="img-responsive">
					</div>
				</div>
				
				<div class="col-md-9 col-sm-9 col-xs-12 padd0">
                                    <%
                                                        psmt=con.prepareStatement("select * from tbl_company");
                                                        rs=psmt.executeQuery();
                                                        while(rs.next())
                                                        {
                                                            if(rs.getString("email").equals(session.getAttribute("uname").toString()))
                                                            {
                                                                index--;
                                                            }
                                                            else{
                                                           %>
                                                           <div class="col-md-3 col-sm-3 col-xs-12" style="text-align: center;border: none">
                                                               <div class="employe-box" style="height: 200px;border: none;">
                                                                   <div class="image" style="">
                                                                       <img onclick="window.open('employers_detail.jsp?id=<%=rs.getString("id")%>','_top')" style="position: absolute;margin: auto;top: 0;left: 0;right: 0;bottom: 0;" width="200px" height="200px" class="img-responsive" src="<%=rs.getString("logo_src").substring(64)%>" alt="logo" title="logo"/>
							</div>		
						</div>
					</div>
                                                           <%
                                                            }
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