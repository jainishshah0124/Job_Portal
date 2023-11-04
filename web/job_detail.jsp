
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Apply Job-form</title>
<!-- Bootstrap stylesheet -->
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
					<div class="jobs-content">
						<h1>Job Detail</h1>
						<ul class="list-inline">
							<li>
                                                            <a href="home_user.jsp">Home</a>
							</li>
							<li>></li>
							<li>
								<a href="#">Jobs</a>
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
    PreparedStatement psmt=con.prepareStatement("select * from tbl_jobs where id='"+request.getParameter("id")+"'");
    ResultSet rs=psmt.executeQuery();
    rs.next();
%>

<!-- job start here -->
	<div id="jobdetail">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12 hidden-xs">
					<img src="<%=rs.getString("img_src").substring(64)%>" alt="p6" title="p6" class="img-responsive" />
					<div class="left-side">
						<ul class="list-unstyled">
							
                                                        <li>
								<h5><i class="fa fa-cogs" aria-hidden="true"></i> Sector</h5>
								<p><%=rs.getString("sector")%></p>
							</li>
                                                    
                                                        <li>
								<h5><i class="fa fa-map-marker" aria-hidden="true"></i> Location</h5>
								<p><%=rs.getString("job_location")%></p>
							</li>
							
							<li>
								<h5><i class="fa fa-money" aria-hidden="true"></i> 
								Salary</h5>
                                                            <p><strong>Min:-</strong> &#8377 <%=rs.getString("min_sal")%> Per. Annum<br><br>
                                                               <strong>Max:-</strong> &#8377 <%=rs.getString("max_sal")%> Per. Annum</p>
							</li>
							<li>
								<h5><i class="fa fa-shield" aria-hidden="true"></i> 
								Experience</h5>
								<p><%=rs.getString("min_exp")%>
                                                                    <%
                                                                        if(rs.getString("min_exp").equals(1))
                                                                        {%>Year
                                                                        <%}
                                                                            else
                                                                        {%>Years<%}%>
                                                                </p>
							</li>
                                                        <li>
                                                            
                                                                <%
                                                                        Date date=new Date();
                                                                        String d=date.toString();
                                                                        SimpleDateFormat myFormat=new SimpleDateFormat("yyyy-MM-dd");
                                                                        Date date1 = myFormat.parse(myFormat.format(date));
                                                                        Date date2 = myFormat.parse(rs.getString("posted_date"));
                                                                        long diff = date1.getTime() - date2.getTime();
                                                                        System.out.println((TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS)));
                                                                %>
								<h5><i class="fa fa-clock-o" aria-hidden="true"></i> Posted </h5>
                                                                <%
                                                                        if((TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS))==0)
                                                                        {
                                                                            %>
                                                                            <p>Today</p>
                                                                            <%
                                                                        }
                                                                        else if((TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS))==1)
                                                                        {
                                                                            %>
                                                                            <p>Yesterday</p>
                                                                            <%
                                                                        }
                                                                        else
                                                                        {
                                                                            %><p><%=TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS)%> Days Ago</p>
                                                                            <%
                                                                        }
                                                                %>
							</li>
						</ul>
					</div>
                                                                <%
                                                                        ResultSet rs2;int a;
                                                                if(session.getAttribute("role").equals("user"))
                                                                {
                                                                 %>
                                                                 <div class="leftside margin-t">
						<div class="latest-jobs">
							<h1>LATEST JOBS</h1>
							<div class="border"></div>
							<div class="border1"></div>
						</div>
                                            <% 
                                    con=Config.connection.getConnection();
                                    psmt=con.prepareStatement("select * from tbl_jobs");
                                    rs2=psmt.executeQuery();
                                    a=0;
                                    rs2.last();
                                    rs2.next();
                                    while(rs2.previous()){
                                        a++;
                                        if(a==5)
                                        {
                                            break;
                                        }
                                        if(request.getParameter("id").equals(rs2.getString("id")))
                                        {
                                            a--;
                                        }
                                        else
                                        {
                                        %>
                                        
						<div class="job-content">
							<img src="<%=rs2.getString("img_src").substring(64)%>" alt="p1" title="p1">
							<h1><%=rs2.getString("job_title")%></h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><%=rs2.getString("job_location")%></a>
								</li>
							</ul>
                                                                <%
                                                                if(session.getAttribute("role").equals("company"))
                                                                {
                                                                    %>
                                                                        <a href="job_detail.jsp?id=<%=rs2.getString(1)%>">View More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                                                    <%
                                                                }
                                                                else{
                                                                    %>
                                                                        <a href="job_detail.jsp?id=<%=rs2.getString(1)%>">View More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                                                        <%
                                                                }
                                                                %>
							
						</div>
                                        <%
                                        }
                                        }%>
					</div>
				
                                                                 <%
                                                                }%>
                                </div>
					
				<div class="col-md-8 col-sm-8 col-xs-12 paddleft content">
					<h1><%=rs.getString("job_title")%></h1>
					<ul class="list-inline">
						<li>
							<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
						</li>
					</ul>
                                        <h5>Company Description</h5>
                                        <%
                                            psmt=con.prepareStatement("select * from tbl_company where id='"+rs.getString("c_id")+"'");
                                            ResultSet rs1=psmt.executeQuery();
                                            rs1.next();
                                        %>
                                        <h3><b><%=rs1.getString("name")%></b></h3><p><%=rs1.getString("company_desc")%></p>
					<h5>Job Description</h5>
					<p><span><%=rs.getString("job_desc")%></span>
					</p>
					<%
                                            if(session.getAttribute("uname").equals("user"))
                                            {
                                            psmt=con.prepareStatement("select * from tbl_jobs_apply_demo where email='"+session.getAttribute("uname")+"'");
                                            ResultSet rs3=psmt.executeQuery();
                                            int flag=1;
                                            while(rs3.next())
                                            {
                                                if(rs3.getString("job_id").equals(request.getParameter("id")))
                                                {
                                                    flag=0;
                                                }
                                            }
                                        %>
					<div class="clearfix"></div>
					
					<div class="job-form col-md-12 col-sm-12 col-xs-12">
						<div class="border"></div>
						<div class="border1"></div>
                                                <%
                                                                psmt=con.prepareStatement("select * from tbl_user where email='"+session.getAttribute("uname")+"'");
                                                                rs3=psmt.executeQuery();
                                                                rs3.next();
                                                            %>
                                                <form class="form-horizontal" method="post" enctype="multipart/form-data" action="apply_job?id=<%=request.getParameter("id")%>&fname=<%=rs3.getString("fname")%>&lname=<%=rs3.getString("lname")%>" onsubmit="getFilename()">
							<fieldset>
								<div class="form-group">
									<div class="col-sm-6">
										<label>First Name</label>
                                                                                <input readonly="" type="text" class="form-control" placeholder="Type your first name" id="input-name" value="<%=rs3.getString("fname")%>" name="txt_fname" required="">
									</div>
									<div class="col-sm-6">
										<label>Last Name</label>
                                                                                <input readonly="" class="form-control" placeholder="Type your last name" id="input-lastname" value="<%=rs3.getString("lname")%>" name="txt_lname" required="" type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Your Email</label>
                                                                                <input readonly="" class="form-control" id="input-email" placeholder="Enter your email address" value="<%=rs3.getString("email")%>" name="txt_email" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>Add your CV</label>
										<div class="browse">
                                                                                    <input name="file" id="file" class="inputfile" type="file" required="">
											<label for="file">Choose a file</label>
                                                                                        <input type="hidden" id="hidden" name="txt1"/>
										</div>
										<span>Your CV must be a .doc, .pdf, .docx, .rtf and no bigger than 1Mb</span>
									</div>
                                                                    
                                                                                <script type="text/javascript">
                                                                                    function getFilename()
                                                                                    {
                                                                                        var file=document.getElementById("file").value;
                                                                                        document.getElementById("hidden").value=file;
                                                                                    }
                                                                                </script>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<label>Additional information</label>
                                                                                <textarea class="form-control" id="input-enquiry" rows="10" name="txt_info" placeholder=""></textarea>
									</div>
								</div>
                                                                        <%
                                                                        if(flag==1)
                                                                        {
                                                                         %>
                                                                        <div class="button">
                                                                        <input type="submit" class="btn btn-info" value="APPLY THIS JOB">
                                                                        </div>
                                                                        <%}
                                                                        else{%>
                                                                            <div class="button">
                                                                        <label class="btn btn-info">ALREADY APPLIED FOR THIS JOB</label>
                                                                        </div> 
                                                                        <%}
                                                                        %>
							</fieldset>
						</form>
					</div>
                                            <% } %>                            
				</div>
					
				<!-- featured start here -->
				<div id="similar" class="col-md-12 col-sm-12 col-xs-12 padd0">
					<!-- similar-jobs start here -->
					<div class="similar-jobs">
						<div class="border"></div>
						<h1><span>Similar</span> JOBS</h1>
						<div class="border1"></div>
					</div>
					<!-- similar-jobs end here -->
                                        <%
                                            psmt=con.prepareStatement("select * from tbl_jobs where sector='"+rs.getString("sector")+"'");
                                            rs2=psmt.executeQuery();
                                            a=0;
                                            while(rs2.next())
                                            {
                                                if(a==4)
                                                {
                                                    break;
                                                }
                                                else if(rs2.getString(1).equals(request.getParameter("id")))
                                                {
                                                    rs2.next();
                                                }
                                                else
                                                {
                                                    a++;
                                                %>
                                                    <div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
								<img class="img-responsive" src="<%=rs2.getString("img_src").substring(64)%>" alt="p1" title="p1"/>
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
							<h1><%=rs2.getString("job_title")%></h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><%=rs2.getString("job_location")%></a>
								</li>
							</ul>
							<p><%=rs2.getString("job_desc")%> [...]</p>
						</div>
                                                <div class="center">
                                                            <button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs2.getString(1)%>'">View More</button>
                                                        </div>
					</div>
				</div>
                                                <%
                                                }
                                            }
                                            psmt=con.prepareStatement("select * from tbl_jobs where c_id='"+rs.getString("c_id")+"'");
                                            rs2=psmt.executeQuery();
                                            while(rs2.next())
                                            {
                                                if(a==4)
                                                {
                                                    break;
                                                }
                                                else if(request.getParameter("id").equals(rs2.getString(1)))
                                                {
                                                    
                                                }
                                                else{
                                                a++;    
                                                %>
                                                    <div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
								<img class="img-responsive" src="<%=rs2.getString("img_src").substring(64)%>" alt="p1" title="p1"/>
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
							<h1><%=rs2.getString("job_title")%></h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><%=rs2.getString("job_location")%></a>
								</li>
							</ul>
							<p><%=rs2.getString("job_desc")%> [...]</p>
						</div>
						<div class="center">
                                                            <button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs2.getString(1)%>'">View More</button>
                                                        </div>
					</div>
				</div>
                                                    <%
                                                }
                                            }
                                            if(a<5)
                                            {
                                                psmt=con.prepareStatement("select * from tbl_jobs");
                                                rs2=psmt.executeQuery();
                                                while(rs2.next())
                                                {
                                                if(a==4)
                                                {
                                                    break;
                                                }
                                                else if(request.getParameter("id").equals(rs2.getString(1)))
                                                {
                                                    
                                                }
                                                else{
                                                    a++;
                                                    %>
                                                    <div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
								<img class="img-responsive" src="<%=rs2.getString("img_src").substring(64)%>" alt="p1" title="p1"/>
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
							<h1><%=rs2.getString("job_title")%></h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><%=rs2.getString("job_location")%></a>
								</li>
							</ul>
							<p><%=rs2.getString("job_desc")%> [...]</p>
						</div>
						<div class="center">
                                                            <button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs2.getString(1)%>'">View More</button>
                                                        </div>
					</div>
				</div>
                                                    <%
                                                }
                                            
                                            }
                                            }
                                        %>
				
				</div>
				<!-- featured end here -->
				
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