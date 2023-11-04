    <%-- 
    Document   : index
    Created on : Mar 24, 2017, 7:30:53 PM
    Author     : Jainish Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
    function get()
    {
        newwindow=window.open('http://localhost:8080/Job_protal/popup.jsp','name','height=800,width=500');   // it takes lotsof more arguments you can use as per your needs
        if (window.focus) {newwindow.focus()}   //to set focus on new opened window
    }
    function call()
    {
        alert("Login First");
        window.open("Login_page.jsp",'_top');
    }
</script>
        <style>
            img{
                width: 700px;
                height: 450px;
            }
            #footer{
                margin-top: 0px;
            }
        </style>
          <link href="startbootstrap-freelancer-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="startbootstrap-freelancer-gh-pages/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="startbootstrap-freelancer-gh-pages/vendor/font-awesome/fonts/../css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <!--New CSS-->
    
    <!-- Bootstrap Core CSS -->
    <link href="startbootstrap-modern-business-gh-pages/startbootstrap-modern-business-gh-pages/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="startbootstrap-modern-business-gh-pages/startbootstrap-modern-business-gh-pages/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="startbootstrap-modern-business-gh-pages/startbootstrap-modern-business-gh-pages/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="newcss.css" rel="stylesheet" type="text/css">
    </head>
    <body id="page-top" onload="get();" style="background-color:white;">
        <div class="top">
        <%@include file="header.jsp" %>
        
     
        <header id="myCarousel" class="carousel slide" style="background-color: white;">
        <!-- Indicators -->
        <ol class="carousel-indicators" style="top: 392px;">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <center>
        <div class="carousel-inner" style="top: 49px;height: 365px;width: 1000px;">
            <div class="item">
                <div class="fill" style="background-image:url('image/company/tomlin-media-company-logos-4-14-13.jpg');background-size: 800px 350px;background-repeat: no-repeat;"></div>
            </div>
            <div class="item active">
                <div class="fill" style="background-image:url('image/company/company-logos.png');background-size: 800px 350px;background-repeat: no-repeat;"></div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('image/company/computer-logos-names-listcompany-logos-names-list-4020-hd-40120.jpg');background-size: 800px 350px;background-repeat: no-repeat;"></div>
            </div>
            <div class="item active">
                <div class="fill" style="background-image:url('image/company/tumblr_nubgxr7FpG1r1da5ko4_1280.gif');background-size: 800px 350px;background-repeat: no-repeat;"></div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev" style="top: 119px;left: 120px;padding-left:100px;">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next" style="top: 119px;right: 120px;padding-right:100px;">
            <span class="icon-next"></span>
        </a>
    </header>
        <div class="row" style="margin-top: 150px;">
                <div class="col-lg-12">
                                    <div class="container">
                                    <div class="block block-fullwidth block-background">
        <div class="block-inner">
            <div class="block-padding">
                <div class="page-block-title">
                    <h1>Job Platform Statistics</h1>
                    <p>Check some of the best features provided by Job Platform application developed in Symfony framework.</p>
                </div><!-- /.page-block-title -->

                <div class="stats">
                    <div class="container">
                        <div class="row">
                            <div class="stat-item-wrapper col-md-6 col-lg-3">
                                <strong>Projects</strong>
                                <span>1600</span>
                            </div><!-- /.stat-item-wrapper -->

                            <div class="stat-item-wrapper col-md-6 col-lg-3">
                                <strong>Candidates</strong>
                                <span>2200</span>
                            </div><!-- /.stat-item-wrapper -->

                            <div class="stat-item-wrapper col-md-6 col-lg-3">
                                <strong>Companies</strong>
                                <span>800</span>
                            </div><!-- /.stat-item-wrapper -->

                            <div class="stat-item-wrapper col-md-6 col-lg-3">
                                <strong>Completed Works</strong>
                                <span>3200</span>
                            </div><!-- /.stat-item-wrapper -->
                        </div><!-- /.row -->
                    </div><!-- /.container -->
                </div><!-- /.stats -->
            </div><!-- /.block-padding -->
        </div><!-- /.block-inner -->
    </div>
                                    </div>
                                    </div>
				</div>
        
        <div class="block block">
        <div class="page-block-title">
            <h1>What Clients Say?</h1>
            <p>Read our favorite reviews about our Job Platform from our clients.</p>
        </div><!-- /.page-block-title -->

        <div class="row">
            <div class="col-sm-12">
                <div class="container">
  <br>
  <div id="myCarousel1" class="carousel slide" data-ride="carousel" style="text-align: center">
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <div class="box-long-rating">
                                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                </div>
                                <p>
                                        A lot of homework sit propaganda and sometimes, peanut members. Gluten. The refinancing. It also ends any peanut football pregnant diameter of the author himself. Performance boat mourning employee. Proin ac customer service. Boat from the pot care, volleyball diam, set button.
                                </p>
                                <span class="box-long-author">
                                    <span class="box-long-author-photo">
                                        <img src="image/user/samim.png" alt="John Doe" style="max-height: 100%;max-width: 100%;">
                                    </span>

                                    <span class="box-long-author-name">
                                        John Doe
                                    </span>
                                    -
                                    <span class="box-long-author-company">
                                        Awesome Company Ltd.
                                    </span>
                                </span>
      </div>

        <div class="item">
        <div class="box-long-rating">
                                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                </div>
                                <p>
                                        A lot of homework sit propaganda and sometimes, peanut members. Gluten. The refinancing. It also ends any peanut football pregnant diameter of the author himself. Performance boat mourning employee. Proin ac customer service. Boat from the pot care, volleyball diam, set button.
                                </p>
                                <span class="box-long-author">
                                    <span class="box-long-author-photo">
                                        <img src="image/company/New_Company/Elvera.jpg" alt="John Doe" style="max-height: 100%;max-width: 100%;">
                                    </span>

                                    <span class="box-long-author-name">
                                        John Doe
                                    </span>
                                    -
                                    <span class="box-long-author-company">
                                        Awesome Company Ltd.
                                    </span>
                                </span>
      </div>
        
      <div class="item">
        <div class="box-long-rating">
                                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                </div>
                                <p>
                                        A lot of homework sit propaganda and sometimes, peanut members. Gluten. The refinancing. It also ends any peanut football pregnant diameter of the author himself. Performance boat mourning employee. Proin ac customer service. Boat from the pot care, volleyball diam, set button.
                                </p>
                                <span class="box-long-author">
                                    <span class="box-long-author-photo">
                                        <img src="image/company/New_Company/huyan.png" alt="John Doe" style="max-height: 100%;max-width: 100%;">
                                    </span>

                                    <span class="box-long-author-name">
                                        John Doe
                                    </span>
                                    -
                                    <span class="box-long-author-company">
                                        Awesome Company Ltd.
                                    </span>
                                </span>
      </div>
    </div>
  </div>
</div>
            </div><!-- /.col-* -->
        </div><!-- /.row -->
    </div>
        <div class="container" style="margin-top: 50px;">
            <div class="row">
         
            <div class="col-lg-12">
                <h1 class="page-header">
                    Jobs You May Be Interested
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> Tops Jobs</h4>
                    </div>
                    <div class="panel-body">
                        <p>Openings for HR-sourcer<br><font color="orange">TECHNOSOFT GLOBAL SERVICES</font><br>2-4 Years<br></p>
                        <a href="#" class="btn btn-default" onclick="return call()">Apply</a>
                        <hr>
                        <p>Graduate For Finance For Banks<br><font color="orange">ONE MARCH INDIA</font><br>2-7 Years<br></p>
                        <a href="#" class="btn btn-default" onclick="return call()">Apply</a>
                    </div>
                </div>
            </div>
           <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>WALK-IN JOBS</h4>
                    </div>
                    <div class="panel-body">
                        <p>Analyst-Accounting<br><font color="orange">HCL TECHNOLOGIES LTD.</font><br>1 Year<br></p>
                        <a href="#" class="btn btn-default" onclick="return call()">Apply</a>
                        <hr>
                        <p>Immediate Opening-ISR/Associate<br><font color="orange">PACER AUTOMATION PVT. LTD.</font><br>1-6 Years<br></p>
                        <a href="#" class="btn btn-default" onclick="return call()">Apply</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>WALK-IN JOBS</h4>
                    </div>
                    <div class="panel-body">
                        <p>Senior Software Engineering-C/C++<br><font color="orange">SYSVINE TECHNOLOGIES PVT. LTD.</font><br>4-8 Year<br></p>
                        <a href="#" class="btn btn-default" onclick="return call()">Apply</a>
                        <hr>
                        <p>Oracle PLSQL Development<br><font color="orange">SOFTEON INDIA PVT. LTD.</font><br>1-6 Years<br></p>
                        <a href="#" class="btn btn-default" onclick="return call()">Apply</a>
                    </div>
                </div>
            </div>
        </div>
            </div>
            <center>
            <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Our Top Brands</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="image/company/Motorola_Logo-Lenovo-Company.png" width="700" height="40">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="image/company/intel.png">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="image/company/hyundai-motor-company-2.svg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img style="padding-top: 60px;" class="img-responsive img-portfolio img-hover" src="image/company/The_Walt_Disney_Studios_logo.png" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="image/company/Former_Visa_(company)_logo.svg.png" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="image/company/lg-korean-company-logo-white-background-f5.jpg" alt="">
                </a>
            </div>
        </div>
        </center>
        </div>
        </div>
        <%@include file="footer.jsp" %>  
        
    <!-- jQuery -->
    <script src="startbootstrap-freelancer-gh-pages/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="startbootstrap-modern-business-gh-pages/startbootstrap-modern-business-gh-pages/js/bootstrap.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="startbootstrap-freelancer-gh-pages/js/jqBootstrapValidation.js"></script>
    <script src="startbootstrap-freelancer-gh-pages/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="startbootstrap-freelancer-gh-pages/js/freelancer.min.js"></script>    
    <script src="startbootstrap-modern-business-gh-pages/startbootstrap-modern-business-gh-pages/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="startbootstrap-modern-business-gh-pages/startbootstrap-modern-business-gh-pages/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    </body>
</html>
