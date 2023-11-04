<%-- 
    Document   : Login_page
    Created on : Mar 23, 2017, 9:12:45 PM
    Author     : Jainish Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .form-signin
{
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
}
.form-signin .form-signin-heading, .form-signin .checkbox
{
    margin-bottom: 10px;
}
.form-signin .checkbox
{
    font-weight: normal;
}
.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
    margin-top: 20px;
    padding: 40px 0px 20px 0px;
    background-color: #f7f7f7;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
.login-title
{
    color: #555;
    font-size: 18px;
    font-weight: 400;
    display: block;
}
.profile-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.need-help
{
    margin-top: 10px;
}
.new-account
{
    display: block;
    margin-top: 10px;
}
            #left{
                float: left;
                width: 30%;
                padding-left: 60px;
                padding-top: 60px;
            }
            #right{
                float: right;
                width:60%;
                padding-top: 60px;
            }
            #top{
                padding-top: 100px;
                width: 80%;
                padding-left: 140px;
            }
        </style>
          <!-- Bootstrap Core CSS -->
          <link href="startbootstrap-freelancer-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="startbootstrap-freelancer-gh-pages/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="startbootstrap-freelancer-gh-pages/vendor/font-awesome/fonts/../css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    </head>
    <body style="background-color: #18BC9C;">
        <div id="top">
            <%@include file="header.jsp" %>
            <div class="container" id="login">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="account-wall">
                <img class="profile-img" src="image/manas2.png"
                    alt="">
                <form class="form-signin" action="login_success?role=job_seeker" method="post">
                <input type="text" name="txt_email" class="form-control" placeholder="Email" required autofocus>
                <input type="password" name="txt_pass" class="form-control" placeholder="Password" required>
                <input class="btn btn-lg btn-primary btn-block" type="submit" value="Sign In">
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
                <a href="contact_us.jsp" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="contact_us.jsp" class="pull-right need-help">Need help? </a><span class="clearfix"></span>     
        </div>
    </div>
</div>
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
    <%@include file="footer.jsp" %>
    </body>
</html>
