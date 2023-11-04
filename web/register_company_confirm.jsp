<%-- 
    Document   : register_company_confirm
    Created on : Mar 29, 2017, 1:03:25 AM
    Author     : Jainish Shah
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
        <%@include file="header.jsp" %>
        <%
            MultipartRequest m=new MultipartRequest(request,"E:\\New");
            String name=m.getParameter("txt_name");
            String org=m.getParameter("txt_org");
            String email=m.getParameter("txt_email");
            String mob=m.getParameter("txt_mob");
            String alt=m.getParameter("txt_altmob");
            String comp_desc=m.getParameter("txt_desc");
            String location=m.getParameter("location");
            String add=m.getParameter("txt_address");
            String url=m.getParameter("hidden");
            System.out.println(""+url);
//            try{
//            Connection con=Config.connection.getConnection();
//            PreparedStatement psmt=con.prepareStatement("insert into tbl_company values(null,'"+name+"','"+org+"','"+email+"',"+mob+"','"+alt+"','"+comp_desc+"','"+location+"','"+add+"');");
//            psmt.executeUpdate();
//            out.println("Insert Complete");
//            }
//            catch(Exception e)
//            {
//                System.out.println(""+e);
//            }
        %>
        <%@include file="footer.jsp" %>
    </body>
</html>
