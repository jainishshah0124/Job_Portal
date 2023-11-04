    <%-- 
        Document   : login_success
        Created on : Mar 25, 2017, 1:38:26 AM
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
                try{
                String email=request.getParameter("txt_email");
                String pass=request.getParameter("txt_pass");
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("select email,AES_DECRYPT(password,'key') as password from tbl_admin");
                ResultSet rs=psmt.executeQuery();
                while(rs.next())
                {
                    if(rs.getString("email").equals(email))
                    {
                        if(rs.getString("password").equals(pass))
                        {
                            session.setAttribute("uname", email);
                            response.sendRedirect("admin_home.jsp");
                        }
                        else{
                        %>
                        <script type="text/javascript">
                            alert("Invalid Username Or Password");
                        </script>
                        <%
                        response.sendRedirect("Login_page.jsp");
                    }
                    }
                    else{
                        %>
                        <script type="text/javascript">
                            alert("Invalid Username Or Password");
                        </script>
                        <%
                        response.sendRedirect("Login_page.jsp");
                    }
                }
                }
                catch(Exception e)
                {

                }
            %>
        </body>
    </html>
