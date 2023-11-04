
<%@page import="java.util.concurrent.TimeUnit"%>
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
<script type="text/javascript">
    function ini_visible()
    {
        document.getElementById("page1").style.display="block";
        document.getElementById("nav1").className="active";
        document.getElementById("next").value=1;
        document.getElementById("prev").value=1;
    }
    function  showPage(id){
        var i;
        for(i=1;i<=document.getElementById("total").value;i++)
        {
            if(document.getElementById("page"+i))
            {
                document.getElementById("page"+i).style.display="none";
                document.getElementById("nav"+i).className="";
            }
            if(document.getElementById("page"+id))
            {
                document.getElementById("page"+id).style.display="block";
                document.getElementById("nav"+id).className="active";
                document.getElementById("next").value=id;
                document.getElementById("prev").value=id-1;
            }
        }
    }
    function onnext()
    {
        var id=parseInt(document.getElementById("next").value)+1;
        if(id===(parseInt(document.getElementById("total").value)))
        {
            alert("Last page");
        }
        else
        {
            for(var i=1;i<=document.getElementById("total").value;i++)
            {
                if(document.getElementById("page"+i))
                {
                    document.getElementById("page"+i).style.display="none";
                    document.getElementById("nav"+i).className="";
                }
                if(document.getElementById("page"+id))
                {
                    document.getElementById("page"+id).style.display="block";
                    document.getElementById("nav"+id).className="active";
                    document.getElementById("next").value=id;
                }
            }
        }
    }
    function onprevious()
    {
        var id=parseInt(document.getElementById("next").value)-1;
        if(id<=0)
        {
            alert("First page");
        }
        else
        {
            for(var i=1;i<=document.getElementById("total").value;i++)
            {
                if(document.getElementById("page"+i))
                {
                    document.getElementById("page"+i).style.display="none";
                    document.getElementById("nav"+i).className="";
                }
                if(document.getElementById("page"+id))
                {
                    document.getElementById("page"+id).style.display="block";
                    document.getElementById("nav"+id).className="active";
                    document.getElementById("next").value=id;
                    document.getElementById("prev").value=id-1;
                }
            }
        }
    }
    function onlast()
    {
        var id=parseInt(document.getElementById("total").value)-1;
        
            for(var i=1;i<=document.getElementById("total").value;i++)
            {
                if(document.getElementById("page"+i))
                {
                    document.getElementById("page"+i).style.display="none";
                    document.getElementById("nav"+i).className="";
                }
                if(document.getElementById("page"+id))
                {
                    document.getElementById("page"+id).style.display="block";
                    document.getElementById("nav"+id).className="active";
                    document.getElementById("next").value=id;
                    document.getElementById("prev").value=id-1;
                }
            }
    }
</script>
</head>
<style>
    span{
        font-size: larger;
    }
    td{
        width: 5px;
    }
</style>
<body onload="return ini_visible()">
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
						<h1>Jobs</h1>
						<ul class="list-inline">
							<li>
                                                            <a href="company_home.jsp">Home</a>
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
    PreparedStatement psmt;
    Connection con=Config.connection.getConnection();
    ResultSet rs;
%>
<!-- job start here -->
	<div id="job">
		<div class="container" id="h1">
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
                                                            <div class="col-md-9 col-sm-9 col-xs-12 padd0 product-list" style="left: 31px;">
                                    <%
                                        int i=0;
                                        int p=1;
                                        int sr=0;
                                        int total=50;
//                                        psmt=con.prepareStatement("select * from tbl_sector where name='"+request.getParameter("ddl_sector")+"'");
//                                        rs=psmt.executeQuery();
//                                        rs.next();
                                        String s="%"+request.getParameter("search").toString()+"%";
                                        String query="select * from tbl_user where lname LIKE '"+s+"' OR fname LIKE '"+s+"'";
                                        psmt=con.prepareStatement(query);
                                        rs=psmt.executeQuery();
                                        rs.last();
                                        total=rs.getRow();
                                        rs.beforeFirst();
                                        while(i<total)
                                        {
                                            %>
                                            <div id="page<%=p%>" style="display:none">
                                                <%System.out.println("i:"+i);
                                                    for(int j=1;j<=4;j++)
                                                    {
                                                        rs.next();
                                                        System.out.println("j"+j);
                                                        %>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
						<div class="product-box">
							<div class="image">
								<a href="jobs-detail.html">
                                                                    <img height="250" width="250" src="<%=rs.getString("src").substring(64)%>" alt="p1" title="p1"/>
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
                                                                <div class="matter" style="padding-top: 44px;padding-bottom: 35px;margin-left: 250px">
                                                                <%sr=i+j;%>
								<h1><%=sr%> <%=rs.getString("fname")%>&nbsp;<%=rs.getString("lname")%></h1>
								<ul class="list-inline">
									<li>
										<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
									</li>
									<li>
										<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <%=rs.getString("state")%></a>
									</li>
                                                                        <br><br><br>
									<li>
										<a href="#"><i class="fa fa-birthday-cake" aria-hidden="true"></i> <%=rs.getString("dob")%></a>
									</li>
                                                                        <li>
										<a href="#"><i class="fa fa-envelope" aria-hidden="true"></i> <%=rs.getString("email")%></a>
									</li>
								</ul>
								<p><%=rs.getString("info")%> [..]</p>
								<button type="button" class="btn btn-info" onclick="location.href='candidate_detail.jsp?id=<%=rs.getString("id")%>'">View More</button>
							</div>
						</div>
					</div>
                                                        <%
                                                    if((i+j)==total)    
                                                    {
                                                        i=i+j;
                                                        p++;
                                                        break;
                                                    }
                                            if(j%4==0)
                                            {
                                             p++;
                                            i=i+4;
                                            System.out.println(""+i);
                                            break;}
                                                    }
                                                %>
                                            </div>
                                            <%
                                        }
                                        System.out.println(""+p);
                                        if(sr==0)
                                        {
                                            %>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <img src="image/nojobsfound.png"/>
                                            </div>
                                            <%
                                        }
                                    %>
					
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align:center">
						<ul class="pagination">
							<li>
                                                            <a href="#h1" aria-label="Previous" onclick="onprevious()"><span aria-hidden="true" class="fa fa-angle-left"></span></a>
							</li>
                                                        <input type="hidden" value="<%=p%>" id="total"/>
                                                        <input type="hidden" id="next"/>
                                                        <input type="hidden" id="prev"/>
                                                        <%
                                                        int temp=p;
                                                        p=1;
                                                        while(p<temp)
                                                        {
                                                         %>
							<li id="nav<%=p%>">
                                                            <!--<button onclick="showPage(<%=p%>)" id="nav<%=p%>"><%=p%></button>-->
                                                            <a href="#h1" onclick="showPage(<%=p%>)"><%=p%></a> 
							</li>
                                                        <%
                                                            p++;
                                                        }
                                                        %>
							<li>
                                                            <a href="#h1" aria-label="Next" onclick="onnext()"><span aria-hidden="true" class="fa fa-angle-right"></span></a>
							</li>
							<li>
                                                            <a href="#h1" aria-label="Next" onclick="onlast()"><span aria-hidden="true" class="fa fa-angle-double-right"></span></a>
							</li>
						</ul>
					</div>
				
				</div>
			</div>
		</div>
	</div>
<!-- abouts end here -->


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