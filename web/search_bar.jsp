<%-- 
    Document   : search_bar
    Created on : Apr 18, 2017, 1:10:54 PM
    Author     : Jainish Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    <!-- Bootstrap CSS -->    
    <link href="startbootstrap-sb-admin-2-gh-pages/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="startbootstrap-sb-admin-2-gh-pages/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="startbootstrap-sb-admin-2-gh-pages/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="startbootstrap-sb-admin-2-gh-pages/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="startbootstrap-sb-admin-2-gh-pages/css/style.css" rel="stylesheet">
    <link href="startbootstrap-sb-admin-2-gh-pages/css/style-responsive.css" rel="stylesheet" />
    <style>
        

#custom-search-input {
        margin:0;
        margin-top: 10px;
        padding: 0;
    }
 
    #custom-search-input .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    #custom-search-input button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        color:#D9230F;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }

    </style>
               
    </head>
    <body>
        <div class="container">
	<div class="row">
           <div id="custom-search-input">
               <div class="input-group col-md-9">
                   <input type="text" class="search-query form-control" style="height: 60px;font-size: 25px;" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class="fa fa-search" style="font-size: 20px;"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
	</div>
</div>
    </body>
</html>
