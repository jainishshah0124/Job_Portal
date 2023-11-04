
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


<!-- job start here -->
	<div id="job">
		<div class="container" id="h1">
                    <div class="col-md-12 col-sm-12 col-xs-12 form1" style="width: 1170px;">
				<div class="sort col-md-2 col-sm-2 col-xs-12">
					<label class="control-label">Sort By:</label>
                                        <select class="form-control" onchange="order()" id="order">
                                            <option value="0">Select Order</option>
                                            <option value="job_title">Ascending</option>
                                            <option value="job_title DESC">Descending</option>
					</select>
				</div>
                        <input type="hidden" value="<%=request.getParameter("ddl_sector")%>" id="sector1"/>
                        <input type="hidden" value="<%=request.getParameter("ddl_location")%>" id="location1"/>
                        <input type="hidden" value="<%=request.getParameter("search")%>" id="keywords1"/>
                                <%
                                    Connection con=Config.connection.getConnection();
                                    PreparedStatement psmt=con.prepareStatement("select * from tbl_sector");
                                    ResultSet rs=psmt.executeQuery();
                                %>
				<div class="show col-md-2 col-sm-2 col-xs-12">
					<label class="control-label">Sector:</label>
                                        <select class="form-control" name="ddl_sector" onchange="ddl_sector()" id="sector">
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
                                        <script type="text/javascript">
                                            function  order()
                                            {
                                                var a=document.getElementById("order").value.toString();
                                                a="search_result.jsp?orderby="+a+"&ddl_sector="+document.getElementById("sector1").value.toString()+"&ddl_location="+document.getElementById("location1").value.toString()+"&search="+document.getElementById("keywords1").value.toString()+"";
                                                window.open(a,"_top");
                                            }
                                            function  ddl_sector()
                                            {
                                                var a=document.getElementById("sector").value.toString();
                                                a="search_result.jsp?orderby=job_title&ddl_sector="+a+"&ddl_location=0&search=0";
                                                window.open(a,"_top");
                                            }
                                            function  ddl_location()
                                            {
                                                var a=document.getElementById("location").value.toString();
                                                a="search_result.jsp?orderby=job_title&ddl_sector=0&ddl_location="+a+"&search=0";
                                                window.open(a,"_top");
                                            }
                                        </script>
				<div class="category col-md-2 col-sm-2 col-xs-12">
					<label class="control-label" >Location:</label>
                                        <select class="form-control" name="ddl_location" id="location" onchange="ddl_location()">
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
                                        <%
                                                    psmt=con.prepareStatement("select * from tbl_sector ORDER BY RAND()");
                                                    rs=psmt.executeQuery();
                                                    rs.next();
                                        %>
				<div class="keyword col-md-6 col-sm-6 col-xs-12">
					<label class="control-label">Keywords:</label>
					<br>
					<button type="button" value="Submit" class="btn btn-success" onclick="location.href='search_result.jsp?ddl_sector=0&ddl_location=0&search=<%=rs.getString("name")%>'"><%=rs.getString("name")%></button><%rs.next();%>
					<button type="button" value="Submit" class="btn btn-danger" onclick="location.href='search_result.jsp?ddl_sector=0&ddl_location=0&search=<%=rs.getString("name")%>'"><%=rs.getString("name")%></button><%rs.next();%>
					<button type="button" value="Submit" class="btn btn-warning" onclick="location.href='search_result.jsp?ddl_sector=0&ddl_location=0&search=<%=rs.getString("name")%>'"><%=rs.getString("name")%></button><%rs.next();%>
				</div>	
			</div>
			<div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-12 hidden-xs" style="padding-right: 10px;">
					<div class="left left1">
						<div class="job-candidate">
							<h1>FEATURED COMPANIES</h1>
							<div class="border"></div>
							<div class="border1"></div>
						</div>
                                                <%
                                                    psmt=con.prepareStatement("select * from tbl_company");
                                                    rs=psmt.executeQuery();
                                                    rs.last();
                                                    int index=0;
                                                %>
						<div id="latestsfeat" class="owl-carousel">
                                                    <%
                                                        do
                                                        {
                                                            index++;
                                                            if(index==3)
                                                            {
                                                                break;
                                                            }
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
                                                        }while(rs.previous());
                                                    %>
						</div>
					</div>	
                                                
                                                <%
                                                        if(session.getAttribute("role").equals("company"))
                                                        {
                                                            %>
                                                            
                                                                    <div class="leftside">
                                                                        <div class="latest-jobs">
                                                                                <h1>LATEST JOBS</h1>
                                                                                <div class="border"></div>
                                                                                <div class="border1"></div>
                                                                        </div>
                                                                    <%
                                                                                psmt=con.prepareStatement("select * from tbl_jobs");
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
                                                                                <img src="<%=rs.getString("img_src").substring(64)%>" alt="p1" title="p1" />
                                                                                <h1><%=rs.getString("job_title")%></h1>
                                                                                <ul class="list-inline">
                                                                                        <li>
                                                                                                <a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
                                                                                        </li>
                                                                                        <li>
                                                                                                <a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <%=rs.getString("job_location")%></a>
                                                                                        </li>
                                                                                </ul>
                                                                                <a href="job_detail.jsp?id=<%=rs.getString("id")%>">View More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                                                        </div>
                                                                                    <%
                                                                                }while(rs.previous());
                                                                    %>
                                                                </div>
                                                            <%
                                                        }
                                                        else
                                                        {
                                                            %>
                                                            <div class="leftside">
						<div class="latest-jobs">
							<h1>LATEST JOBS</h1>
							<div class="border"></div>
							<div class="border1"></div>
						</div>
                                            <%
                                                        psmt=con.prepareStatement("select * from tbl_jobs");
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
							<img src="<%=rs.getString("img_src").substring(64)%>" alt="p1" title="p1" />
							<h1><%=rs.getString("job_title")%></h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <%=rs.getString("job_location")%></a>
								</li>
							</ul>
							<a href="job_detail.jsp?id=<%=rs.getString("id")%>">APPLY NOW <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
						</div>
                                                            <%
                                                        }while(rs.previous());
                                            %>
					</div>
                                                            <%
                                                        }
                                                        %>
                                                
					<div class="career">
						<img src="image/left-banner.jpg" title="left-banner" alt="left-banner" class="img-responsive">
					</div>
				</div>
				
                                 <%
                                                        if(session.getAttribute("role").equals("company"))
                                                        {
                                                            %>
                                                            <div class="col-md-9 col-sm-9 col-xs-12 padd0 product-list" style="left: 31px;">
                                    <%
                                        int i=0;
                                        int p=1;
                                        int sr=0;
                                        int total=50;
                                        String s="%"+request.getParameter("search").toString()+"%";
                                        String query="select * from tbl_jobs where job_title LIKE '"+s+"' OR sector LIKE '"+s+"' OR job_desc LIKE '"+s+"' OR skill LIKE '"+s+"' OR job_location='"+request.getParameter("ddl_location")+"' OR sector='"+request.getParameter("ddl_sector")+"' order BY "+request.getParameter("orderby");
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
                                                                <div class="matter" style="padding-top: 44px;">
                                                                <%sr=i+j;%>
								<h1><%=sr%> <%=rs.getString("job_title")%></h1>
								<ul class="list-inline">
									<li>
										<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
									</li>
									<li>
										<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <%=rs.getString("job_location")%></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-money" aria-hidden="true"></i> &#8377 <%=rs.getString("max_sal")%> Per Annum</a>
									</li>
									<li>
                                                                            <%
                                                                        Date date=new Date();
                                                                        String d=date.toString();
                                                                        System.out.println(d);
                                                                        SimpleDateFormat myFormat=new SimpleDateFormat("yyyy-MM-dd");
                                                                        Date date1 = myFormat.parse(myFormat.format(date));
                                                                        Date date2 = myFormat.parse(rs.getString("posted_date"));
                                                                        long diff = date1.getTime() - date2.getTime();
                                                                %>
                                                                <%
                                                                        if((TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS))==0)
                                                                        {
                                                                            %>
                                                                            <a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i> Posted Today</a>
                                                                            <%
                                                                        }
                                                                        else if((TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS))==1)
                                                                        {
                                                                            %>
                                                                            <a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i> Posted Yesterday</a>
                                                                            <%
                                                                        }
                                                                        else
                                                                        {
                                                                            %>
                                                                            <a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i> Posted <%=TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS)%> Days Ago</a>
                                                                            <%
                                                                        }
                                                                %>
									</li>
								</ul>
								<p><%=rs.getString("job_desc")%> [..]</p>
								<button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs.getString("id")%>'">View More</button>
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
                                                            <%
                                                        }
                                                        else
                                                        {
                                                            %>
                                                            <div class="col-md-9 col-sm-9 col-xs-12 padd0 product-list" style="left: 31px;">
                                    <%
                                        int i=0;
                                        int p=1;
                                        int sr=0;
                                        int total=50;
                                        String s="%"+request.getParameter("search").toString()+"%";
                                        String query="select * from tbl_jobs where job_title LIKE '"+s+"' OR sector LIKE '"+s+"' OR job_desc LIKE '"+s+"' OR skill LIKE '"+s+"' OR job_location='"+request.getParameter("ddl_location")+"' OR sector='"+request.getParameter("ddl_sector")+"' order BY "+request.getParameter("orderby");
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
                                                                <div class="matter" style="padding-top: 44px;">
                                                                <%sr=i+j;%>
								<h1><%=sr%> <%=rs.getString("job_title")%></h1>
								<ul class="list-inline">
									<li>
										<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
									</li>
									<li>
										<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> <%=rs.getString("job_location")%></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-money" aria-hidden="true"></i> &#8377 <%=rs.getString("max_sal")%> Per Annum</a>
									</li>
									<li>
                                                                            <%
                                                                        Date date=new Date();
                                                                        String d=date.toString();
                                                                        System.out.println(d);
                                                                        SimpleDateFormat myFormat=new SimpleDateFormat("yyyy-MM-dd");
                                                                        Date date1 = myFormat.parse(myFormat.format(date));
                                                                        Date date2 = myFormat.parse(rs.getString("posted_date"));
                                                                        long diff = date1.getTime() - date2.getTime();
                                                                %>
                                                                <%
                                                                        if((TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS))==0)
                                                                        {
                                                                            %>
                                                                            <a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i> Posted Today</a>
                                                                            <%
                                                                        }
                                                                        else if((TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS))==1)
                                                                        {
                                                                            %>
                                                                            <a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i> Posted Yesterday</a>
                                                                            <%
                                                                        }
                                                                        else
                                                                        {
                                                                            %>
                                                                            <a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i> Posted <%=TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS)%> Days Ago</a>
                                                                            <%
                                                                        }
                                                                %>
									</li>
								</ul>
								<p><%=rs.getString("job_desc")%> [..]</p>
								<button type="button" class="btn btn-info" onclick="location.href='job_detail.jsp?id=<%=rs.getString("id")%>'">APPLY NOW</button>
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
                                                            <%
                                                        }
                                                        %>
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