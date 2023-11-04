

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
<style>
    span{
        font-size: larger;
    }
    td{
        width: 5px;
    }
</style>
<body>
    <%@include file="header_company.jsp" %>

                                                    <%
                                                        Connection con=Config.connection.getConnection();
                                                        PreparedStatement psmt=con.prepareStatement("select * from tbl_company where email='"+session.getAttribute("uname")+"'");
                                                        ResultSet rs=psmt.executeQuery();
                                                        rs.next();
                                                        System.out.println(""+session.getAttribute("uname"));
                                                        System.out.println(""+rs.getString("email"));
                                                    %>
                                                    <div class="modal fade" id="updateinfo" role="dialog">
                                                                        <div class="modal-dialog" style="padding-top: 180px;">
                                                                                                  <!-- Modal content-->
                                                                            <div class="modal-content">
                                                                                <div class="modal-header" style="padding-top: 5px;padding-bottom: 10px;border: none;"  >
                                                                                    <!--<h2 style="color: black">Profile Picture Selection</h2>-->
                                                                                    <div class="pull-left" style="padding-left: 8px;">
                                                                    <h4><label>Update Information</label></h4>
								</div>
                                                                                    <div class="pull-right" style="padding-right: 5px;">
                                                                                     <a data-dismiss="modal" aria-hidden="true"><i class="fa fa-close btn btn-primary btnus"></i></a>
								</div>

                                                                                </div>
                                                                                <div class="modal-body" style="color:black;padding-top: 25px;">
                                                                                    <div id="login-form" style="margin-top: 0px;margin-bottom: 0px;">
					<div class="form">

                                            <form class="form-horizontal" method="post" action="update_info">
                                                                                    <fieldset>
                                                                                        
								<div class="form-group">
									<div class="col-lg-12">
                                                                            <div class="col-lg-6" style="padding-left: 0px;">
                                                                                <label>Name</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your First Name" value="<%=rs.getString("name")%>" name="txt_name" required="" type="text">
                                                                            </div>
                                                                            <div class="col-lg-6" style="padding-right:  0px;">
                                                                                <label>Organization</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("organization")%>" name="txt_org" required="" type="text">
                                                                            </div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-12">
										<label>Email</label>
                                                                                <input class="form-control" id="input-email" placeholder="Type your email address" value="<%=rs.getString("email")%>" name="txt_email" required="" type="text" disabled="">
									</div>
								</div>
                                                                <div class="form-group">
									<div class="col-lg-12">
                                                                            <div class="col-lg-6" style="padding-left: 0px;">
                                                                                <label>Mobile Number</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("mobile")%>" name="txt_mob" required="" type="text">
                                                                            </div>
                                                                            <div class="col-lg-6" style="padding-left: 0px;">
                                                                                <label>Alternate Number</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("alt_mobile")%>" name="txt_a_mob" required="" type="text">
                                                                            </div>
                                                                        </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-lg-12">
                                                                        <label>Location</label>
                                                                                <!--<input class="form-control" id="input-username" placeholder="Enter your Last Name" value="" name="txt_lname" required="" type="text">-->
                                                                                <input type="hidden" name="state" value="<%=rs.getString("location")%>"/>&nbsp;&nbsp;&nbsp;
                                                                                <select class="btn dropdown-toggle btn-default" style="height: 56px;font-size: 16px;width: 390px;" name="txt_state">
                                    <option value="0">------------Select State------------</option>
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
								</div>
                                                                                <div class="form-group" style="margin-bottom: 0px;">
                                                                                    <div class="col-lg-12">
                                                                                        <label>Company Description</label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group" style="margin-top: 0px;">
                                                                                    <div class="col-lg-12">
                                                                                        <textarea class="form-control" style="height: 150px;padding-top: 0px;" name="txt_desc"><%=rs.getString("company_desc")%></textarea>
                                                                                    </div>
                                                                                </div>
                                                                                    <div class="form-group" style="margin-bottom: 0px;">
                                                                                    <div class="col-lg-12">
                                                                                        <label>Company Address</label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group" style="margin-top: 0px;">
                                                                                    <div class="col-lg-12">
                                                                                        <textarea class="form-control" style="height: 50px;padding-top: 0px;" name="txt_address"><%=rs.getString("address")%></textarea>
                                                                                    </div>
                                                                                </div>
								<div class="button">
									<button type="submit" value="Submit" class="btn btn-primary btnus">Update</button>
								</div>
							</fieldset>
                                                                                </form>
                                        </div></div>
                                                                                </div>
                                                                        </div>
                                                                    </div>
								</div>
<!-- jobs start here -->
	<div id="jobs">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- about-content start here -->
					<div class="jobs-content canditate">
						<h1>MY PROFILE</h1>
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


<!-- job start here -->
	<div id="job">
		<div class="container">
			<div class="row">
				<div class="canditate-profile">
					<ul class="nav nav-tabs list-inline">
						<li class="active">
							<a href="#profile" data-toggle="tab" aria-expanded="true">PROFILE</a>
						</li>
						<li class="">
							<a href="#applied" data-toggle="tab" aria-expanded="false">JOBS POSTED</a>
						</li>
						<li class="">
							<a href="#password" data-toggle="tab" aria-expanded="false">CHANGE PASSWORD</a>
						</li>
					</ul>
				</div>
                                                                                
                                                             <div class="modal fade" id="updateinfo_profile" role="dialog">
                                                                        <div class="modal-dialog" style="padding-top: 180px;">
                                                                                                  <!-- Modal content-->
                                                                            <div class="modal-content">
                                                                                <form enctype="multipart/form-data" role="form" class="form-horizontal" method="post" action="update_pic" onsubmit="getFilename()">
                                                                                <div class="modal-header" style="padding-top: 5px;">
                                                                                    <h2 style="color: black">Profile Picture Selection</h2>
                                                                                </div>
                                                                                <div class="modal-body" style="color:black;">
                                                                                    <input class="form-control form-group form form-horizontal" type="file" name="file" id="file"/>
										<span>Your CV must be a .doc, .pdf, .docx, .rtf and no bigger than 1Mb</span>
                                                                                    <input type="hidden" id="hidden" name="txt1"/>
                                                                                </div>
                                                                                <div class="modal-footer">
                                                                                     <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                                                                                     <input type="submit" class="btn btn-danger" value="Update"/>
                                                                                </div>
                                                                                </form>
                                                                                <script type="text/javascript">
                                                                                    function getFilename()
                                                                                    {
                                                                                        var file=document.getElementById("file").value;
                                                                                        document.getElementById("hidden").value=file;
                                                                                    }
                                                                                </script>
                                                                        </div>
                                                                    </div>
								</div>
				<div class="tab-content">
					<div class="tab-pane active" id="profile">
                                            <div class="canditate-profile">
					<ul class="nav nav-tabs list-inline">
						<li>
                                                        <!--<a href="#profile" data-toggle="tab" aria-expanded="true">PROFILE</a>-->
                                                        <form class="form-horizontal candidate-single">
                                                            <fieldset>
                                                        <div class="button">
								<div class="pull-right">
                                                                        <a class="btn btn-primary btnus" data-toggle="modal" data-target="#updateinfo">Edit Profile</a>
								</div>
							</div>
                                                            </fieldset>
                                                        </form>

						</li>
					</ul>
				</div>
						<div class="col-md-12">
						<form class="form-horizontal candidate-single" method="post">
						<fieldset>
							<div class="form-group">
								<div class="col-sm-4">
									<div class="image product-box">
                                                                            <center>
                                                                                <a href="#">
                                                                                    <img class="img-responsive" src="<%= rs.getString("logo_src").substring(64) %>" alt="p1" title="p1" width="200" height="200"/>
                                                                                </a>	</center>
                                                                                        <div class="buttons">
                                                                                                <div class="open-down">
                                                                                                        <button type="button" class="rotate1" data-toggle="modal" data-target="#updateinfo_profile">
                                                                                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                                                                                        </button>
                                                                                                </div>
                                                                                        </div>
                                                                        </div>
                                                                </div>
                                                                    <div class="col-sm-8" style="font-size: larger">
									<div class="matter">
										<label>FULL NAME 
										</label>
                                                                            <span><%=rs.getString("name")%></span>
									</div>	
									<div class="matter">
										<label>Organization
										 
										</label>
										<span><%=rs.getString("organization")%></span>
									</div>	
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>Email
										 
										</label>
                                                                            <span><%=rs.getString("email")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>LOCATION
										 
										</label>
										<span><%=rs.getString("location")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>MOBILE NUMBER
										 
										</label>
                                                                            <span>(+91)&nbsp;<%=rs.getString("mobile")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>Alternate Mobile Number
										 
										</label>
										<span><%=rs.getString("alt_mobile")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>Company Description
										 
										</label>
                                                                            <span style="line-height: 20px;"><%=rs.getString("company_desc")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>Address
										 
										</label>
										<span><%=rs.getString("address")%></span>
									</div>
								</div>
							</div>	
                                                    </div>
						</fieldset>
						</form>
						</div>
                            <div class="tab-pane" id="applied">
                                            
                                            <%
                                                psmt=con.prepareStatement("select * from tbl_jobs where c_id='"+rs.getString("id")+"'");
                                                ResultSet rs1;
                                                rs1=psmt.executeQuery();
                                                while(rs1.next())
                                                {
                                                    %>
                                                    <center>
                                                    <div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
                                                                    <img class="img-responsive" src="<%=rs1.getString("img_src").substring(64)%>" alt="p1" title="p1"/>
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
									<h1><%=rs1.getString("job_title")%></h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><%=rs1.getString("job_location")%></a>
										</li>
									</ul>
									<p><%=rs1.getString("job_desc")%>[...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs1.getString("id")%>'">VIEW MORE</button>
							</div>
						</div>
                                                    </center>
                                                    <%
                                                }
                                            %>
						
					</div>                        
                                                                        
					<div class="tab-pane" id="password">
						<div class="col-sm-offset-3 col-md-6 col-sm-6  col-xs-12">
							<form class="form-horizontal password" method="post" action="change_password">
								<fieldset>  
									<div class="form-group">
										<div class="col-sm-12">
											<label>OLD PASSWORD</label>
											<input class="form-control" id="old-password" value="" name="old_password" required="" type="password">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<label>ENTER NEW PASSWORD</label>
											<input class="form-control" id="new-password" value="" name="new_password" required="" type="password">
										</div>
									</div>
								
									<div class="form-group">
										<div class="col-sm-12">
											<label>CONFIRM PASSWORD
											</label>
											<input class="form-control" id="confirm-password" value="" name="confirm_password" required="" type="password">
										</div>
									</div>
								
									<div class="button">
										<button type="submit" value="Submit" class="btn btn-primary btnus">SAVE</button>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
        </div>
<!-- job end here -->



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