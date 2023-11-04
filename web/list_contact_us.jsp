<%-- 
    Document   : list_contact_us
    Created on : Apr 17, 2017, 12:53:35 PM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: white;">
        <div id='wrapper'>
    <section id="container">
        <%@include file="header_admin.jsp" %>
        
            <section id="main-content" style="margin: 10px;">
                <section class="wrapper">
                    <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            List Of Contact Us
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
    <table width="100%" class="table table-striped table-bordered table-hover " id="dataTables-example">
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
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("select * from tbl_contactus");
                ResultSet rs=psmt.executeQuery();
                while(rs.next())
                {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("phone")%></td>
                        <td><%=rs.getString("message")%></td>
<!--                        <td><a href="#myModal" role="button" data-toggle="modal">Delete</a>-->
<td><button class="btn btn-danger" data-toggle="modal" data-target="#myModal1<%=rs.getInt("id")%>">Delete</button>
<!--                        <td><a href="admin_detail_update.jsp?contactus_id=<%=rs.getInt("id")%>">Delete</a></td>-->
<div class="modal fade" id="myModal1<%=rs.getInt("id")%>" role="dialog">
        <div class="modal-dialog" style="padding-top: 180px;">
                                      <!-- Modal content-->
                                      <div class="modal-content">
                                        <form action="delete_contactus_success?id=<%=rs.getInt("id")%>" method="post">
                                         <div class="modal-header" style="padding-top: 5px;">
                                            <h2 style="color: black">Delete Confirmation</h2>
                                        </div>
                                          <div class="modal-body" style="color:black">
                                              <p>Are you sure you want to delete the user ?</p>
                                        </div>
                                        <div class="modal-footer">
                                             <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                                             <input type="submit" class="btn btn-danger" value="Delete"/>
                                        </div>
                                          </form>
                                      </div>

                                    </div>
                                </div>
                    </tr>
                    <script type="text/javascript">
                        function abc(var id)
                        {
                            document.getElementById("hidden1").value=id;
                        }
                    </script>
                    <%
                }
            }
            catch(Exception e)
            {
                
            }
        %>
    </tbody>
  </table>  </div>
                </div>
            </div>
        </div>              
                </section>
            </section>
    </section>
        </div>
    </body>
</html>
