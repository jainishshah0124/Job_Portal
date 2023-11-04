<%-- 
    Document   : final
    Created on : Mar 24, 2017, 10:45:49 AM
    Author     : Jainish Shah
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Refresh" content="5;url=popup.jsp">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String[] a=request.getParameterValues("field");
            if(a.length>3)
            {
//                session.setAttribute('popup_error', 'please select 2');
                out.println("<h2>Please Select only 3 Interested Field</h2>");
                out.println("<h3>redirecting to previous page in 4 seconds<br/>");
                out.println("Problem in redirecting <a href='popup.jsp'>--->Click Here<---</a></h3>");
//                response.sendRedirect("popup.jsp");
            }
            for(int i=0;i<a.length;i++)
            {
                
            }
            Connection con=Config.connection.getConnection();
            PreparedStatement psmt=con.prepareStatement("");
        %>
    </body>
</html>
