
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

<!--     Bootstrap Core CSS 
    <link href="startbootstrap-sb-admin-2-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

     MetisMenu CSS 
    <link href="startbootstrap-sb-admin-2-gh-pages/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

     Custom CSS 
    <link href="startbootstrap-sb-admin-2-gh-pages/dist/css/sb-admin-2.css" rel="stylesheet">

     Morris Charts CSS 
    <link href="startbootstrap-sb-admin-2-gh-pages/vendor/morrisjs/morris.css" rel="stylesheet">
    
     Custom Fonts 
    <link href="startbootstrap-sb-admin-2-gh-pages/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

     HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries 
     WARNING: Respond.js doesn't work if you view the page via file:// 
    [if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]

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
-->    <style>
.button {
  border-radius: 4px;
  background-color: #286090;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 21px;
  padding: 10px;
  transition: all 0.5s;
  cursor: pointer;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
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
</head>

<body style="background-color: white;">
    <div id="wrapper">
        <%@include file="header_admin.jsp" %>
        <div id="page-wrapper">
                <div class="container-fluid">
                     <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                List of User's
                            </h1>
                        </div>
                         <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover " id="dataTables-example">
                               <thead>
                        <tr>
                            <th class="col-tools" colspan="2" style="text-align: center"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
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
                                            <td align="center">
                                                <a class="btn btn-default" href="list_user_update.jsp?id=<%=rs.getString("id")%>&method=deactivate"><span
                                                        aria-hidden="true">Deactivate</span></a></td><td>
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
                                            <td align="center">
                                            <a class="btn btn-default" href="list_user_update.jsp?id=<%=rs.getString("id")%>&method=activate"><span
                                                        aria-hidden="true">Activate</span></a></td><td>
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
                            
                        </div></div>
                </div>
                         
                    </div>
                </div>
            </div>
            </div>
    </div>
    <!-- DataTables JavaScript -->
    <script src="startbootstrap-sb-admin-2-gh-pages/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="startbootstrap-sb-admin-2-gh-pages/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="startbootstrap-sb-admin-2-gh-pages/vendor/datatables-responsive/dataTables.responsive.js"></script>
    
    
    <!-- Custom Theme JavaScript -->
    <script src="startbootstrap-sb-admin-2-gh-pages//dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="startbootstrap-sb-admin-2-gh-pages/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
</body>
</html>
