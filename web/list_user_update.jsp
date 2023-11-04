<%-- 
    Document   : list_user_update.jsp
    Created on : Mar 25, 2017, 10:13:55 AM
    Author     : Jainish Shah
--%>

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
            if(request.getParameter("method").equals("activate"))
            {
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("update tbl_user set active=1 where id='"+request.getParameter("id")+"'");
                psmt.executeUpdate();
                psmt=con.prepareStatement("update tbl_login_master set active=1 where id='"+request.getParameter("id")+"'");
                psmt.executeUpdate();
                response.sendRedirect("list_user.jsp");
            }
            else if(request.getParameter("method").equals("deactivate")){
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("update tbl_user set active=0 where id='"+request.getParameter("id")+"'");
                System.out.println("success");
                psmt.executeUpdate();
                psmt=con.prepareStatement("update tbl_login_master set active=0 where id='"+request.getParameter("id")+"'");
                psmt.executeUpdate();
                response.sendRedirect("list_user.jsp");
            }
            else if(request.getParameter("method").equals("delete"))
            {
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("delete from tbl_user where id='"+request.getParameter("id")+"'");
                System.out.println("success");
                psmt.executeUpdate();
                psmt=con.prepareStatement("delete from tbl_login_master where id='"+request.getParameter("id")+"'");
                psmt.executeUpdate();   
                response.sendRedirect("list_user.jsp");
            }
        %>
    </body>
</html>
