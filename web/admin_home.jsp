<%-- 
    Document   : admin_home
    Created on : Mar 25, 2017, 1:41:03 AM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Scrolling Nav - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="startbootstrap-scrolling-admin/startbootstrap-scrolling-nav-gh-pages/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="startbootstrap-scrolling-admin/startbootstrap-scrolling-nav-gh-pages/css/scrolling-nav.css" rel="stylesheet">
    <style>
        .btn-group .btn {
    transition: background-color .3s ease;
}

.panel-table .panel-body {
    padding: 0;
}

.table > thead > tr > th {
    border-bottom: none;
}

.panel-footer, .panel-table .panel-body .table-bordered {
    border-style: none;
    margin: 0;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type {
    text-align: center;
    width: 50px;
}
.panel-table .panel-body .table-bordered > thead > tr > th.col-tools {
    text-align: center;
    width: 120px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:last-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:last-of-type {
    border-right: 0;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:first-of-type {
    border-left: 0;
}

.panel-table .panel-body .table-bordered > tbody > tr:first-of-type > td {
    border-bottom: 0;
}

.panel-table .panel-body .table-bordered > thead > tr:first-of-type > th {
    border-top: 0;
}

.pagination > li > a, .pagination > li > span {
    border-radius: 50% !important;
    margin: 0 5px;
}

.pagination {
    margin: 0;
}
li{
    border-right-style: solid;
}
input[type=text] {
    width: 40%;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
select{
    width: 40%;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
.form-style-5 input[type="text"],
.form-style-5 input[type="date"],
.form-style-5 input[type="datetime"],
.form-style-5 input[type="email"],
.form-style-5 input[type="number"],
.form-style-5 input[type="search"],
.form-style-5 input[type="time"],
.form-style-5 input[type="url"],
.form-style-5 textarea,
.form-style-5 select {
    font-family: Georgia, "Times New Roman", Times, serif;
    background: rgba(255,255,255,.1);
    border: none;
    border-radius: 4px;
    font-size: 16px;
    margin: 0;
    outline: 0;
    padding: 7px;
    width: 40%;
    box-sizing: border-box; 
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box; 
/*    background-color: #e8eeef;
    color:#8a97a0;*/
    background-color: black;
    color: wheat;
    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
    box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
    margin-bottom: 30px;
    
}
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
    $('.btn-filter').on('click', function () {
        var $target = $(this).data('target');
        if ($target != 'completed') {
            $('.table tbody tr').css('display', 'none');
            $('.table tr[data-status="' + $target + '"]').fadeIn('slow');
        } else {
            $('.table tbody tr').css('display', 'none').fadeIn('slow');
        }
    });

    $('#checkall').on('click', function () {
        if ($("#mytable #checkall").is(':checked')) {
            $("#mytable input[type=checkbox]").each(function () {
                $(this).prop("checked", true);
            });

        } else {
            $("#mytable input[type=checkbox]").each(function () {
                $(this).prop("checked", false);
            });
        }
    });
});

    </script>
</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="font-size: large;">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Job Portal</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a class="page-scroll" href="#page-top"></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#about">About Us</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">List of User</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact Us List</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="logout_success.jsp">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

     <section id="intro" class="intro-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                     <h1>Admin Panel</h1>
                     <p><strong>Usage Instructions:</strong>You can edit Job Seekers and delete them or Block them.Can add new Jobs.</p><br><br>
                    <div class="form-style-5">
                        <input type="text" name="" value="" placeholder="Job Titles, Keywords" />
                    <select name="">
                        <option>Exp (years)</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select><br></div>
                    <a class="btn btn-default page-scroll" style="width: 30%;font-size: x-large" href="#">Search</a>
                </div>
            </div>
        </div>
    </section>


    <!-- Services Section --><section style="padding-bottom: 40px;">
        <section id="services" class="services-section">

<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">List Of User's</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <div class="pull-right">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-success btn-filter active" data-target="completed">
                                        <input type="radio" name="options" id="option1" autocomplete="off" checked>
                                        Active
                                    </label>
                                    <label class="btn btn-warning btn-filter" data-target="pending">
                                        <input type="radio" name="options" id="option2" autocomplete="off"> InActive
                                    </label>
                                    <label class="btn btn-default btn-filter" data-target="all">
                                        <input type="radio" name="options" id="option3" autocomplete="off"> All
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table id="mytable" class="table table-striped table-bordered table-list">
                        <thead>
                        <tr>
                            <th class="col-check"><input type="checkbox" id="checkall" onclick="test()"/></th>
                            <th class="col-tools"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
                            </th>
                            <th class="hidden-xs">ID</th>
                            <th class="col-text">First Name</th>
                            <th class="col-text">Last Name</th>
                            <th class="col-text">Mobile</th>
                            <th class="col-text">Email ID</th>
                            <th class="col-text">Information</th>
                            <th class="col-text">Sector Interested</th>
                            <th class="col-text">State</th>
                        </tr>
                        </thead>
                        <tbody>
                            <%
                                Connection con=Config.connection.getConnection();
                                PreparedStatement ps=con.prepareStatement("select * from tbl_user");
                                ResultSet rs=ps.executeQuery();
                                while(rs.next())
                                {
                                    if(rs.getString("active").equals("1"))
                                    {
                                        %>
                                        <tr data-status="completed">
                                            <td align="center"><input type="checkbox" class="checkthis"/></td>
                                            <td align="center">
                                                <a class="btn btn-default" href="list_user_update.jsp?id=<%=rs.getString("id")%>&method=deactivate"><span
                                                        aria-hidden="true">Deactivate</span></a>
                                                        <a class="btn btn-danger" href="list_user_update.jsp?id=<%=rs.getString("id")%>&method=delete"><span class="glyphicon glyphicon-trash"
                                                                aria-hidden="true"></span></a>
                                            </td>
                                            <td class="hidden-xs"><%=rs.getString("id")%></td>
                                            <td><%=rs.getString("fname")%></td>
                                            <td><%=rs.getString("lname")%></td>
                                            <td><%=rs.getString("mobile")%></td>
                                            <td><%=rs.getString("email")%></td>
                                            <td><%=rs.getString("info")%></td>
                                            <%
                                                ps=con.prepareStatement("select name from tbl_sector where id='"+rs.getInt(1)+"'");
                                                ResultSet rs1=ps.executeQuery();
                                                rs1.next();
                                            %>
                                            <td><%=rs1.getString("name")%></td>
                                            <td><%=rs.getString("state")%></td>
                                            </tr>
                                        <%
                                    }
                                    else{
                                        %>
                                        <tr data-status="pending">
                                             <td align="center"><input type="checkbox" class="checkthis"/></td>
                                            <td align="center">
                                            <a class="btn btn-default" href="list_user_update.jsp?id=<%=rs.getString("id")%>&method=activate"><span
                                                        aria-hidden="true">Activate</span></a>
                                            <a class="btn btn-danger" href="list_user_update.jsp?id=<%=rs.getString("id")%>&method=delete"><span class="glyphicon glyphicon-trash"
                                                                aria-hidden="true"></span></a>  
                                            </td>
                                            <td class="hidden-xs"><%=rs.getString("id")%></td>
                                            <td><%=rs.getString("fname")%></td>
                                            <td><%=rs.getString("lname")%></td>
                                            <td><%=rs.getString("mobile")%></td>
                                            <td><%=rs.getString("email")%></td>
                                            <td><%=rs.getString("info")%></td>
                                            <%
                                                ps=con.prepareStatement("select name from tbl_sector where id='"+rs.getInt(1)+"'");
                                                ResultSet rs1=ps.executeQuery();
                                                rs1.next();
                                            %>
                                            <td><%=rs1.getString("name")%></td>
                                            <td><%=rs.getString("state")%></td>
                                        </tr>   
                                        <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
    </section>
</section>
    <!-- Contact Section -->
  <section id="contact" class="contact-section">
        <div class="container">
  <h2>Contact Us Details</h2>
  <center>
  <p>List Of user who needs help !!</p>                                                                                      
  <div class="table-responsive">          
  <table class="table" border="0">
    <thead>
      <tr align="center">
        <th align="center">#</th>
        <th>Name</th>
        <th>Email ID</th>
        <th>Phone</th>
        <th>Message</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
        <%
            try{
                PreparedStatement psmt=con.prepareStatement("select * from tbl_contactus");
                rs=psmt.executeQuery();
                while(rs.next())
                {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("phone")%></td>
                        <td><%=rs.getString("message")%></td>
                        <td><a href="admin_detail_update.jsp?contactus_id=<%=rs.getInt("id")%>">Delete</a></td>
                    </tr>
                    <%
                }
            }
            catch(Exception e)
            {
                
            }
        %>
    </tbody>
  </table>
  </div>
    
        </div>
    
    </section>
        <%@include file="footer.jsp" %>
<!--    <section id="about" class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                
                </div>
            </div>
        </div>
    </section>-->
</body>

</html>
