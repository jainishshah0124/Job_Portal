<%-- 
    Document   : header
    Created on : Mar 23, 2017, 10:51:56 PM
    Author     : Jainish Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <!-- Bootstrap Core CSS -->
          <link href="startbootstrap-freelancer-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="startbootstrap-freelancer-gh-pages/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="startbootstrap-freelancer-gh-pages/vendor/font-awesome/fonts/../css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    </head>
    <body id="page-top">
        <div>
            <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
         <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Job Portal</a>
            </div>
<!--            <table style="width: 80%;">
                <tr>
                    <td><input type="submit" value="Home" /></td>
                    <td><input type="submit" value="Sign In" /></td>
                    <td><input type="submit" value="Register" /></td>
                    <td><input type="submit" value="Contact Us" /></td>
                </tr>
            </table>-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="index.jsp">Home</a>
                    </li>
                     <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Login
                            <span class="caret"></span></a>
                             <ul class="dropdown-menu" style="background-color: #2C3E50">
                                 <li><a href="Login_page.jsp">Job Seeker</a></li>
                                 <li><a href="company_login.jsp">Company</a></li>
                            </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Registration
        <span class="caret"></span></a>
         <ul class="dropdown-menu" style="background-color: #2C3E50">
             <li><a href="register.jsp">Job Seeker</a></li>
             <li><a href="register_company.jsp">Company</a></li>
        </ul>
      </li>
      <li class="page-scroll">
          <a href="about_us.jsp">About Us</a>
                    </li>

                    <li class="page-scroll">
                        <a href="contact_us.jsp">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
         </nav>
        </div>
        
            <!-- jQuery -->
            <script src="startbootstrap-freelancer-gh-pages/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="startbootstrap-freelancer-gh-pages/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="startbootstrap-freelancer-gh-pages/js/jqBootstrapValidation.js"></script>
    <script src="startbootstrap-freelancer-gh-pages/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="startbootstrap-freelancer-gh-pages/js/freelancer.min.js"></script>
    </body>
</html>
