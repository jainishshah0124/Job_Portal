<%-- 
    Document   : logout_success
    Created on : Mar 25, 2017, 11:11:34 AM
    Author     : Jainish Shah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("http://localhost:8080/Job_protal/Login_page.jsp");
        %>
    </body>
</html>
