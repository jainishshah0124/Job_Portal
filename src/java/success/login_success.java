/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package success;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jainish Shah
 */
public class login_success extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con=Config.connection.getConnection();
        PreparedStatement psmt;
        ResultSet rs;
        if(request.getParameter("role").equals("Company"))
        {
           try{
                psmt=con.prepareStatement("select email,aes_decrypt(password,'key') as pass from tbl_login_master");
                rs=psmt.executeQuery(); 
                int flag;
                System.out.println(""+request.getParameter("txt_pass"));
                while(rs.next())
                {
                    if(rs.getString("email").equals(request.getParameter("txt_email")))
                    {
                        if(rs.getString("pass").equals(request.getParameter("txt_pass")))
                        {
                            System.out.println("asdsa");
                            psmt=con.prepareStatement("select * from tbl_company where email='"+rs.getString("email")+"'");
                            ResultSet rs1=psmt.executeQuery();
                            rs1.next();
                            if(rs1.getString("email").equalsIgnoreCase(null))
                            {
                                out.println("error");
                            }
                            else{
                                    HttpSession session=request.getSession();
                                    session.setAttribute("uname", rs1.getString("email"));
                                    session.setAttribute("role", "company");
                                    response.sendRedirect("company_home.jsp");
                            }
                        }
                    }
                }
                out.println("<script>alert('Incorrect Username/Password');window.open('index.jsp','_self')</script>");
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        }
        else if(request.getParameter("role").equals("Admin"))
        {
            try{
                psmt=con.prepareStatement("select email,aes_decrypt(password,'key') as pass from tbl_login_master");
                rs=psmt.executeQuery();  
                while(rs.next())
                {
                    if(rs.getString("email").equals(request.getParameter("txt_uname")))
                    {
                        if(rs.getString("pass").equals(request.getParameter("txt_pass")))
                        {
                            HttpSession session=request.getSession();
                            session.setAttribute("uname", rs.getString("email"));
                            response.sendRedirect("admin_homepage.jsp");
                        }
                    }
                }
                out.println("<script>alert('Incorrect Username/Password');window.open('index.jsp','_self')</script>");
            }
            catch(Exception e)
            {}
        }
        else if(request.getParameter("role").equals("job_seeker"))
        {
            try{
                psmt=con.prepareStatement("select email,aes_decrypt(password,'key') as pass from tbl_login_master");
                rs=psmt.executeQuery(); 
                int flag;
                while(rs.next())
                {
                    if(rs.getString("email").equals(request.getParameter("txt_email")))
                    {
                        if(rs.getString("pass").equals(request.getParameter("txt_pass")))
                        {
                            psmt=con.prepareStatement("select * from tbl_user where email='"+rs.getString("email")+"'");
                            ResultSet rs1=psmt.executeQuery();
                            rs1.next();
                            if(rs1.getString("email").equalsIgnoreCase(null))
                            {
                                out.println("error");
                            }
                            else{
                                if(rs1.getString("active").equals("1"))
                                {   
                                    HttpSession session=request.getSession();
                                    session.setAttribute("uname", rs1.getString("email"));
                                    session.setAttribute("role", "user");
                                    response.sendRedirect("home_user.jsp");
                                }
                                else{
                                     out.println("<script>alert('Account Not Active');window.open('index.jsp','_self')</script>");
                                }
                            }
                        }
                    }
                }
                out.println("<script>alert('Incorrect Username/Password');window.open('index.jsp','_self')</script>");
            }
            catch(Exception e)
            {}
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
