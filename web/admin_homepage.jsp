
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Blank | Creative - Bootstrap 3 Responsive Admin Template</title>
 <!-- Bootstrap Core CSS -->
  <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>

  <body style="background-color: white">
  <!-- container section start -->
      
  <div id="wrapper">
      <%@include file="header_admin.jsp" %>

      <!--main content start-->
      <div id="page-wrapper">
          <div class="container-fluid">
               <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard <small>Overview</small>
                        </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-3">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3" style="padding: 50px;">
                                        <i class="fa fa-users fa-5x" style=""></i>
                                         <%
                                                    Connection con=Config.connection.getConnection();
                                                    PreparedStatement psmt=con.prepareStatement("select * from tbl_user");
                                                    ResultSet rs=psmt.executeQuery();
                                                    int i=0;
                                                    while(rs.next())
                                                    {i++;}
                                                %>
                                    </div>
                                    <div class="col-xs-9 text-right" style="padding-right: 50px;">
                                        <div style="font-size: 70px;">
                                            <%=i%></div>
                                        <div style="font-size: 20px;">Total Users</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                            <div class="col-lg-6 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3" style="padding: 50px;">
                                        <i class="fa fa-building-o fa-5x"></i>
                                                <%
                                                    con=Config.connection.getConnection();
                                                    psmt=con.prepareStatement("select * from tbl_company");
                                                    rs=psmt.executeQuery();
                                                    i=0;
                                                    while(rs.next())
                                                    {i++;}
                                                %>
                                    </div>
                                    <div class="col-xs-9 text-right" style="padding-right: 50px;">
                                        <div class="huge" style="font-size: 70px;">
                                            <%=i%></div>
                                        <div style="font-size: 20px;">Total Companies</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="col-lg-6 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3" style="padding: 50px;">
                                        <i class="fa fa-book fa-5x"></i>
                                                <%
                                                    con=Config.connection.getConnection();
                                                    psmt=con.prepareStatement("select * from tbl_jobs");
                                                    rs=psmt.executeQuery();
                                                    i=0;
                                                    while(rs.next())
                                                    {i++;}
                                                %>
                                    </div>
                                    <div class="col-xs-9 text-right" style="padding-right: 50px;">
                                        <div class="huge" style="font-size: 70px;">
                                            <%=i%></div>
                                        <div style="font-size: 20px;">Total Jobs Posted</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                                        
                        <div class="col-lg-6 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3" style="padding: 50px;">
                                        <i class="fa fa-comments fa-5x"></i>
                                                <%
                                                    con=Config.connection.getConnection();
                                                    psmt=con.prepareStatement("select * from tbl_contactus");
                                                    rs=psmt.executeQuery();
                                                    i=0;
                                                    while(rs.next())
                                                    {i++;}
                                                %>
                                    </div>
                                    <div class="col-xs-9 text-right" style="padding-right: 50px;">
                                        <div class="huge" style="font-size: 70px;">
                                            <%=i%></div>
                                        <div style="font-size: 20px;">F.A.Q</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                  
                    </div>
      </div>
      </div></div>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="startbootstrap-sb-admin-2-gh-pages/js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="startbootstrap-sb-admin-2-gh-pages/js/jquery.scrollTo.min.js"></script>
    <script src="startbootstrap-sb-admin-2-gh-pages/js/jquery.nicescroll.js" type="text/javascript"></script><!--custome script for all page-->
    <script src="startbootstrap-sb-admin-2-gh-pages/js/scripts.js"></script>
<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-55234356-4', 'auto');
    ga('send', 'pageview');
</script>
  </body>
</html>
