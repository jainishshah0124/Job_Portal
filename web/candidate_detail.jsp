
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
    span{
        font-size: 17px;
    }
    td{
        width: 5px;
    }
</style>
</head>
<body>
<!-- top start here -->
<%@include file="header_company.jsp" %>
<!-- header end here -->

<!-- jobs start here -->
	<div id="jobs">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- about-content start here -->
					<div class="jobs-content canditate">
						<h1>CANDIDATES</h1>
						<ul class="list-inline">
							<li>
                                                            <a href="company_home.jsp">Home</a>
							</li>
							<li>></li>
							<li>
								<a href="#">Candidates</a>
							</li>
						</ul>
					</div>
				<!-- jobs-content end here -->
				</div>
			</div>
		</div>
	</div>
<!-- jobs end here -->

<%
    Connection con=Config.connection.getConnection();
    PreparedStatement psmt;
    ResultSet rs;
    %>
<!-- job start here -->
	<div id="job">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12 hidden-xs" style="padding-right: 10px;">
					<div class="left left1">
						<div class="job-candidate">
							<h1>FEATURED CANDIDATES</h1>
							<div class="border"></div>
							<div class="border1"></div>
						</div>
                                                <%
                                                    psmt=con.prepareStatement("select * from tbl_user");
                                                    rs=psmt.executeQuery();
                                                    rs.last();
                                                    int index=0;
                                                %>
						<div id="latestsfeat" class="owl-carousel">
                                                    <%
                                                        do
                                                        {
                                                            index++;
                                                            if(index==5)
                                                            {
                                                                break;
                                                            }
                                                            %>
                                                            <div class="item">
								<div class="col-sm-12 col-xs-12">
									<div class="candidate">
										<img src="<%=rs.getString("src").substring(64)%>" class="img-responsive" alt="cand-1" title="cand-1" />
										<h1><%=rs.getString("fname")%>&nbsp;<%=rs.getString("lname")%></h1>
									</div>
								</div>
                                                            </div>	
                                                            <%
                                                        }while(rs.previous());
                                                    %>
						</div>
					</div>	
                                                
                                                            <div class="leftside">
						<div class="latest-jobs">
							<h1>LATEST CANDIDATES</h1>
							<div class="border"></div>
							<div class="border1"></div>
						</div>
                                            <%
                                                        psmt=con.prepareStatement("select * from tbl_user");
                                                        rs=psmt.executeQuery();
                                                        index=0;
                                                        rs.last();
                                                        do
                                                        {
                                                            index++;
                                                            if(index==4)
                                                            {
                                                                break;
                                                            }
                                                            %>
                                                            <div class="job-content">
							<img src="<%=rs.getString("src").substring(64)%>" alt="p1" title="p1" />
							<h1><%=rs.getString("fname")%>&nbsp;<%=rs.getString("lname")%></h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <%=rs.getString("state")%></a>
								</li>
							</ul>
                                                                <a href="candidate_detail.jsp?id=<%=rs.getString("id")%>">View More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
						</div>
                                                            <%
                                                        }while(rs.previous());
                                            %>
					</div>
                                                
					<div class="career">
						<img src="image/left-banner.jpg" title="left-banner" alt="left-banner" class="img-responsive">
					</div>
				</div>
				<%
                                    psmt=con.prepareStatement("select * from tbl_user where id='"+request.getParameter("id")+"'");
                                    rs=psmt.executeQuery();
                                    rs.next();
                                %>
				<div class="col-md-9 col-sm-9 col-xs-12">
					<form class="form-horizontal candidate-single" method="post">
						<fieldset>
							<div class="form-group">
                                                            <div class="col-sm-5" style="text-align: center">
                                                                <center><img width="350" height="350" src="<%= rs.getString("src").substring(64) %>" alt="my_profile" title="my_profile">
                                                                </center>
                                                                </div>
								<div class="col-sm-7">
									<div class="matter">
										<label>FULL NAME</label>
										<span><%=rs.getString("fname")%>&nbsp;<%=rs.getString("lname")%></span>
									</div>	
									<div class="matter">
										<label>GENDER</label>
										<span><%=rs.getString("gender")%></span>
									</div>	
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>DATE OF BIRTH</label>
										<span><%=rs.getString("dob")%></span>
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>LOCATION
										 
										</label>
										<span><%=rs.getString("state")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>NATIONALITY
										 
										</label>
										<span>Indian</span>
									</div>
								</div>
							</div>
                                                                        <%
                                                                        if(rs.getString("res").equalsIgnoreCase(null))
                                                                        {
                                                                        %>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>MOBILE NUMBER
										 
										</label>
                                                                            <span>(+91)&nbsp;<%=rs.getString("mobile")%></span>
									</div>
								</div>
							</div>
                                                                        <%}
                                                                        if(rs.getString("res").equalsIgnoreCase(null))
                                                                        {
                                                                        %>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>HOME PHONE
										 
										</label>
										<span><%=rs.getString("res")%></span>
									</div>
								</div>
							</div>
                                                                        <%}
                                                                        if(rs.getString("skill").equalsIgnoreCase(null))
                                                                        {
                                                                        %>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>PROFESSIONAL SKILLS
										 
										</label>
										<span><%=rs.getString("skill")%></span>
									</div>
								</div>
							</div>
                                                                         <%}
                                                                        if(rs.getString("exp").equalsIgnoreCase(null))
                                                                        {
                                                                        %>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>EXPERIENCE
										 
										</label>
										<span><%=rs.getString("exp")%></span>
									</div>
								</div>
							</div><%}%>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>EDUCATION
										 
										</label>
										<table class="table">
											<tr>
												<td><b>DEGREE</b></td>
												<td><b>COLLEGE / SCHOOL</b></td>
												<td><b>PASSED YEAR</b></td>
												<td><b>PERCENTAGE %</b></td>
											</tr>
                                                                                        <%
                                                                                            
                                                                                            psmt=con.prepareStatement("select * from tbl_education where email='"+rs.getString("email")+"'");
                                                                                            ResultSet rs1=psmt.executeQuery();
                                                                                            while(rs1.next())
                                                                                            {
                                                                                                %>
                                                                                                <tr>
                                                                                                <th><%=rs1.getString("degree")%></th>
                                                                                                <th><%=rs1.getString("college")%></th>
                                                                                                <th><%=rs1.getString("year")%></th>
                                                                                                <th><%=rs1.getString("per")%>&nbsp;%</th>
                                                                                                </tr>
                                                                                                <%
                                                                                            }
                                                                                        %>
                                                                                </table>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>MY ADDITIONALS INFORMATION
										</label>
										<span>INTEREST : <%=rs.getString("interest")%></span>
										<span>CAREER : <%=rs.getString("career")%></span>
										<span>ACHIVEMENTS : <%=rs.getString("achivements")%></span>
								</div>
							</div>
							<div class="button">
<!--								<div class="pull-left">
									<button type="submit" value="Submit" class="btn btn-primary btnus">CONTACT ME</button>
								</div>-->
                                                                <%
                                                                    psmt=con.prepareStatement("select * from tbl_jobs_apply_demo where email='"+rs.getString("email")+"'");
                                                                    rs1=psmt.executeQuery();
                                                                    rs1.last();
                                                                %>
								<div class="center">
                                                                    <a href="<%=rs1.getString("cv").substring(64)%>" class="btn btn-primary btnus">Download Resume</a>
                                                                    <!--<button onclick="C:\Users\Jainish Shah\Documents\NetBeansProjects\Job_protal\web\uploads\source Code.docx" value="Submit" class="btn btn-primary btnus">DOWNLOAD RESUME</button>-->
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
<!-- abouts end here -->



<!-- Footer start here -->
<%@include file="footer_users.jsp" %>
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