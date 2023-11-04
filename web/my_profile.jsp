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
    <%@include file="header_seeker.jsp" %>

                                                    <%
                                                        Connection con=Config.connection.getConnection();
                                                        PreparedStatement psmt=con.prepareStatement("select * from tbl_user where email='"+session.getAttribute("uname")+"'");
                                                        ResultSet rs=psmt.executeQuery();
                                                        rs.next();
                                                    %>
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
								<a href="index.html">Home</a>
							</li>
							<li>></li>
							<li>
								<a href="my-profile.html">Candidates</a>
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
							<a href="#applied" data-toggle="tab" aria-expanded="false">APPLIED JOBS</a>
						</li>
						<li class="">
							<a href="#password" data-toggle="tab" aria-expanded="false">CHANGE PASSWORD</a>
						</li>
					</ul>
				</div>
                            <%
                                                        psmt=con.prepareStatement("select * from tbl_education");
                                                        ResultSet rs4=psmt.executeQuery();
                                                        while(rs4.next())
                                                        {
                                                            %>
                            <div class="modal fade" id="update_education<%=rs4.getString("id")%>" role="dialog">
                                                                                <div class="modal-dialog" style="padding-top: 180px;">
                                                                                                              <!-- Modal content-->
                                                                                                              <div class="modal-content">
                                                                                                                <form action="update_education?role=update&id=<%=rs4.getString("id")%>" method="post">
                                                                                                                 <div class="modal-header" style="padding-top: 5px;">
                                                                                                                    <h2 style="color: black">Update Education Details</h2>
                                                                                                                </div>
                                                                                                                  <div class="modal-body" style="color:black" style="padding-top: 200px;">
                                                                                                                      <div class="col-lg-12">
                                                                                                                          <div class="col-lg-3"style="padding-left: 0px;">
                                                                                                                           <input placeholder="Your Degree" class="form-control" id="input-email" placeholder="" value="<%=rs4.getString("degree")%>" name="txt_degree" type="text"> 
                                                                                                                        </div>
                                                                                                                        <div class="col-lg-3">
                                                                                                                            <input placeholder="Your College/School" class="form-control" id="input-email" placeholder="" value="<%=rs4.getString("college")%>" name="txt_college" type="text">
                                                                                                                        </div>
                                                                                                                        <div class="col-lg-3">
                                                                                                                            <input placeholder="Your Year" class="form-control" id="input-email" placeholder="" value="<%=rs4.getString("year")%>" name="txt_year" type="text">
                                                                                                                        </div><div class="col-lg-2" style="padding-right: 0px;">
                                                                                                                            <input placeholder="Your Percentage" class="form-control" id="input-email" placeholder="" value="<%=rs4.getString("per")%>" name="txt_per" type="text">
                                                                                                                        </div>
                                                                                                                        <div class="col-lg-1" style="padding-bottom: 5px;">
                                                                                                                            <a href="update_education?role=delete&id=<%=rs4.getString("id")%>" style="color: red"><i class="fa fa-trash-o fa-2x"></i></a>
                                                                                                                        </div>
                                                                                                                      </div>
                                                                                                                </div>
                                                                                                                    <div class="modal-footer" style="padding-top: 50px;">
                                                                                                                     <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                                                                                                                     <input type="submit" class="btn btn-danger" value="Update"/>
                                                                                                                </div>
                                                                                                                  </form>
                                                                                                              </div>

                                                                                                            </div>
                                                                                                        </div>
                                                            <%
                                                        }
                                                        
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
                                                                                <label>First Name</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your First Name" value="<%=rs.getString("fname")%>" name="txt_fname" required="" type="text">
                                                                            </div>
                                                                            <div class="col-lg-6" style="padding-right:  0px;">
                                                                                <label>Last Name</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("lname")%>" name="txt_lname" required="" type="text">
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
                                                                                <label>Date Of Birth</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("dob")%>" name="txt_dob" required="" type="date">
                                                                            </div>
                                                                            <div class="col-lg-6" style="padding-right:  0px;">
                                                                                <label>Location</label>
                                                                                <!--<input class="form-control" id="input-username" placeholder="Enter your Last Name" value="" name="txt_lname" required="" type="text">-->
                                                                                <input type="hidden" name="state" value="<%=rs.getString("state")%>"/>
                                                                                <select class="btn dropdown-toggle btn-default" style="height: 56px;font-size: 16px" name="txt_state">
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
								</div>
                                                                <div class="form-group">
									<div class="col-lg-12">
                                                                            <div class="col-lg-6" style="padding-left: 0px;">
                                                                                <label>Mobile Number</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your First Name" value="<%=rs.getString("mobile")%>" name="txt_mobile" required="" type="text">
                                                                            </div>
                                                                            <div class="col-lg-6" style="padding-right:  0px;">
                                                                                <label>Residence Number</label>
                                                                                <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("res")%>" name="txt_res" required="" type="text">
                                                                            </div>
									</div>
								</div>
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12">
                                                                                    <label>Professional Skills</label>
                                                                                    <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("skill")%>" name="txt_proskill" required="" type="text">
                                                                                </div>
                                                                </div>
                                                                                      <div class="form-group">
                                                                                <div class="col-lg-12">
                                                                                    <label>Experience</label>
                                                                                    <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("exp")%>" name="txt_exp" required="" type="text">
                                                                                </div>
                                                                </div>
                                                                                <%
                                                                                    psmt=con.prepareStatement("select * from tbl_education where email='"+session.getAttribute("uname")+"'");
                                                                                    ResultSet rs1=psmt.executeQuery();
                                                                                %>
                                                                                <div class="form-group" style="margin-bottom: 0px;">
                                                                                    <div class="col-lg-12">
                                                                                        <div class="col-lg-3">
                                                                                            <label>Degree</label>
                                                                                        </div>
                                                                                        <div class="col-lg-3">
                                                                                            <label>College/School</label>
                                                                                        </div>
                                                                                        <div class="col-lg-3">
                                                                                            
                                                                                            <label>Passed Year</label>
                                                                                        </div><div class="col-lg-2">
                                                                                            <label>Per(%)</label>
                                                                                        </div><div class="col-lg-1">
                                                                                                    
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <%
                                                                                    while(rs1.next())
                                                                                    {
                                                                                %>
                                                                                <div class="form-group" style="margin-bottom: 10px;">
                                                                                    <div class="col-lg-12">
                                                                                        <div class="col-lg-3"style="padding-left: 0px;">
                                                                                            <input class="form-control" id="input-email" placeholder="Type your email address" value="<%=rs1.getString("degree")%>" name="" required="" type="text" disabled=""> 
                                                                                        </div>
                                                                                        <div class="col-lg-3">
                                                                                            <input class="form-control" id="input-email" placeholder="Type your email address" value="<%=rs1.getString("college")%>" name="" required="" type="text" disabled="">
                                                                                        </div>
                                                                                        <div class="col-lg-3">
                                                                                            <input class="form-control" id="input-email" placeholder="Type your email address" value="<%=rs1.getString("year")%>" name="" required="" type="text" disabled="">
                                                                                        </div><div class="col-lg-2" style="padding-right: 0px;">
                                                                                            <input class="form-control" id="input-email" placeholder="Type your email address" value="<%=rs1.getString("per")%>" name="" required="" type="text" disabled="">
                                                                                        </div>
                                                                                        <div class="col-lg-1">
                                                                                            <a data-dismiss="modal" aria-hidden="true" data-toggle="modal" data-target="#update_education<%=rs1.getString("id")%>"><i class="fa fa-pencil fa-2x"></i></a>                                                                                            
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                        <% } %>
                                                                                        <div class="form-group">
                                                                                    <div class="col-lg-12">
                                                                                        <div class="col-lg-3"style="padding-left: 0px;">
                                                                                           <input class="form-control" id="input-email" placeholder="" value="" name="txt_degree" type="text"> 
                                                                                        </div>
                                                                                        <div class="col-lg-3">
                                                                                            <input class="form-control" id="input-email" placeholder="" value="" name="txt_college" type="text">
                                                                                        </div>
                                                                                        <div class="col-lg-3">
                                                                                            <input class="form-control" id="input-email" placeholder="" value="" name="txt_year" type="text">
                                                                                        </div><div class="col-lg-3" style="padding-right: 0px;">
                                                                                            <input class="form-control" id="input-email" placeholder="" value="" name="txt_per" type="text">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                      <div class="form-group">
                                                                                <div class="col-lg-12">
                                                                                    <label>Interest</label>
                                                                                    <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("interest")%>" name="txt_interest" required="" type="text">
                                                                                </div>
                                                                </div>
                                                                                      <div class="form-group">
                                                                                <div class="col-lg-12">
                                                                                    <label>Career</label>
                                                                                    <input class="form-control" id="input-username" placeholder="Enter your Last Name" value="<%=rs.getString("career")%>" name="txt_career" required="" type="text">
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
                                                                                
                                                             <div class="modal fade" id="updateinfo" role="dialog">
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
					<div class="modal fade" id="updateinfo" role="dialog">
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
                                                                        <a class="btn btn-primary btnus" data-toggle="modal" data-target="#updateinfo">Edit Resume</a>
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
                                                                                    <img class="img-responsive" src="<%= rs.getString("src").substring(64) %>" alt="p1" title="p1" width="200" height="200"/>
                                                                                </a>	</center>
                                                                                        <div class="buttons">
                                                                                                <div class="open-down">
                                                                                                        <button type="button" class="rotate1" data-toggle="modal" data-target="#update">
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
                                                                            <span><%=rs.getString("fname")%>&nbsp;&nbsp;<%=rs.getString("lname")%></span>
									</div>	
									<div class="matter">
										<label>GENDER
										 
										</label>
										<span><%=rs.getString("gender")%></span>
									</div>	
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>DATE OF BIRTH
										 
										</label>
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
										<label>HOME PHONE
										 
										</label>
										<span><%=rs.getString("res")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>PROFESSIONAL SKILLS
										 
										</label>
										<span><%=rs.getString("skill")%></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>EXPERIENCE
										 
										</label>
										<span><%=rs.getString("exp")%></span>
									</div>
								</div>
							</div>
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
                                                                                            psmt=con.prepareStatement("select * from tbl_education where email='"+session.getAttribute("uname")+"'");
                                                                                            rs1=psmt.executeQuery();
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
							</div>
                                                                                </div>
						</fieldset>
						</form>
						</div>
					<div class="tab-pane" id="applied">
                                            
                                            <%
                                                psmt=con.prepareStatement("select * from tbl_jobs_apply_demo where email='"+session.getAttribute("uname")+"'");
                                                rs=psmt.executeQuery();
                                                while(rs.next())
                                                {
                                                    psmt=con.prepareStatement("select * from tbl_jobs where id='"+rs.getString("job_id")+"'");
                                                    rs1=psmt.executeQuery();
                                                    rs1.next();
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