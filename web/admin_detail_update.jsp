<%-- 
    Document   : admin_detail_update
    Created on : Mar 25, 2017, 2:48:54 AM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           if(request.getParameter("contactus_id").isEmpty())
           {
            
           }
           else{
            Connection con=Config.connection.getConnection();
            PreparedStatement psmt=con.prepareStatement("delete from tbl_contactus where id='"+request.getParameter("contactus_id") +"'");
            psmt.executeUpdate();
            response.sendRedirect("http://localhost:8080/Job_protal/admin_home.jsp#contact");
           }
        %>
    </body>
</html>
