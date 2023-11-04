
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

    <!-- Bootstrap CSS -->    
    <link href="startbootstrap-sb-admin-2-gh-pages/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="startbootstrap-sb-admin-2-gh-pages/css/bootstrap-theme.css" rel="stylesheet">
    <!-- font icon -->
    <link href="NiceAdmin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="NiceAdmin/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="startbootstrap-sb-admin-2-gh-pages/css/style.css" rel="stylesheet">
    <link href="startbootstrap-sb-admin-2-gh-pages/css/style-responsive.css" rel="stylesheet" />


    <!-- Bootstrap Core CSS -->
<!--    <link href="dashboard/css/bootstrap.min.css" rel="stylesheet">

     Custom CSS 
    <link href="dashboard/css/sb-admin.css" rel="stylesheet">

     Morris Charts CSS 
    <link href="dashboard/css/plugins/morris.css" rel="stylesheet">

     Custom Fonts 
    <link href="dashboard/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">-->
    
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>
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
  <body style="background-color: white;">
  <!-- container section start -->
  <div id="wrapper">
  <section id="container" class="">
      <%@include file="header_admin.jsp" %>

      <!--main content start-->
      <section id="main-content" style="margin: 10px;">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
                                     <div class="panel panel-default">
                        <div class="panel-heading">
                            List Of Company's
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <%
                                Connection con=Config.connection.getConnection();
                                PreparedStatement ps=con.prepareStatement("select * from tbl_company");
                                ResultSet rs=ps.executeQuery();
                         %>
                         <tbody>
                        <thead>
                            <tr style="font-size: larger">
                                <th>Name</th>
                                <th>Company Logo</th>
                                <th>Organization</th>
                                <th>Email</th>
                                <th>Mobile</th>
                                <th>Alternate Mobile</th>
                                <th><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></th>
                            </tr>
                        </thead>
                            <%
                                while(rs.next())
                                {
                                    %>
                                    <tr style="font-size: large" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#<%=rs.getString(1)%>">
                                        <td>
                                                <%=rs.getString("name")%></a>
                                        </td>
                                        <td><img src="<%=rs.getString("logo_src").substring(64)%>" width="200" height="150"/></td>
                                        <td class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#<%=rs.getString(1)%>"><%=rs.getString("organization")%></td>
                                        <td><%=rs.getString("email")%></td>
                                        <td><%=rs.getString("mobile")%></td>
                                        <td><%=rs.getString("alt_mobile")%></td>
                                        <%
                                            int temp=0;
                                            ps=con.prepareStatement("select * from tbl_login_master");
                                            ResultSet rs1=ps.executeQuery();
                                            while(rs1.next())
                                            {
                                                if(rs1.getString("email").equals(rs.getString("email")))
                                                {
                                                    temp=1;
                                                }
                                            }
                                            if(temp==1)
                                            {
                                                %>
                                                    <td align="center">
                                            <a class="btn btn-success" href="#"><span
                                                        aria-hidden="true">Activated</span></a></td>
                                                <%
                                            }
                                            else
                                            {
                                                %>
                                                <td align="center">
                                            <a class="btn btn-warning" href="company_approval?id=<%=rs.getString(1)%>"><span
                                                        aria-hidden="true">Approval Pending</span></a></td>
                                                <%
                                            }
                                        %>
                                    </tr>
                                    <tr>
                                        <td colspan="7">
                                            <div id="<%=rs.getString(1)%>" class="panel-collapse collapse">
                                                <table>
                                                    <tr>
                                                        <th>
                                                            Company Description
                                                        </th>
                                                        <td><%=rs.getString("company_desc")%></td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            Location
                                                        </th>
                                                        <td><%=rs.getString("location")%></td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            Address
                                                        </th>
                                                        <td><%=rs.getString("Address")%></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <%
                                }
                            %>
                        </tbody>
                        </table>
                        </div>
                                     </div>
				</div>
			</div>
          </section>
      </section>
  </section>
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
  </div>
                          <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

  </body>
</html>
