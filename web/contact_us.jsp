<%-- 
    Document   : contact_us
    Created on : Mar 24, 2017, 1:06:46 AM
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
    <script>
        function fail{
            if(!=document.getElementsByName("help-block text-danger"))
            {
                alert("afafadf");
            }
        }
    </script>
    <style>
/*        .form-control{
            border: 3px solid #18BC9C;
        }*/
    </style>
    </head>
    <body style="background-color: #18BC9C;">
        <div>
        <%@include file="header.jsp" %>
        <section id="contact" style="padding-top: 100px;height: 765px;width: 839px;padding-left: 100px;background-color: #18BC9C;">
            <div class="container" align="center">
                <div class="jumbotron" style="width: 80%;">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <form  action="contactus_success" method="post">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <input name="txt_name" type="text" class="form-control" placeholder="Name" name="txt_name" id="name" required data-validation-required-message="Please enter your name.">
                                 <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <input name="txt_email" type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <input name="txt_mob" type="text" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <input name="txt_subject" type="text" class="form-control" placeholder="Subject" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <textarea name="txt_message" rows="3" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter Message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <input type="hidden" name="txt_url" value="http://localhost:8080/Job_protal/contact_us.jsp"/>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <input type="submit" class="btn btn-success btn-lg" value="Send"/>
                            </div>
                        </div>
                    </form>
                        </div>
                </div>
            </div>
        </div>
    </section>
        
    <%@include file="footer.jsp" %>
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
