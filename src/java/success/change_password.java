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
public class change_password extends HttpServlet {

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
        String oldpass=request.getParameter("old_password");
        String newpass=request.getParameter("new_password");
        String cpass=request.getParameter("confirm_password");
        try{
        Connection con=Config.connection.getConnection();
        HttpSession session=request.getSession();
        PreparedStatement psmt=con.prepareStatement("select aes_decrypt(password,'key') as password from tbl_login_master where email='"+session.getAttribute("uname")+"'");
        ResultSet rs=psmt.executeQuery();
        rs.next();
        System.out.println(""+rs.getString("password"));
        System.out.println(""+oldpass);
        System.out.println(""+newpass);
        System.out.println(""+cpass);
        if(newpass.equals(cpass))
        {
            System.out.println("enter 1st");
            if(oldpass.equals(rs.getString("password")))
            {
                psmt=con.prepareStatement("update tbl_login_master set password=AES_ENCRYPT('"+cpass+"','key') where email='"+session.getAttribute("uname")+"'");
                psmt.executeUpdate();
                System.out.println("enter 2nd");
                if(session.getAttribute("role").equals("company"))
                {
                    response.sendRedirect("my_profile_company.jsp");
                }
                else{
                    psmt=con.prepareStatement("update tbl_user set password=AES_ENCRYPT('"+cpass+"','key') where email='"+session.getAttribute("uname")+"'");
                    psmt.executeUpdate();
                    response.sendRedirect("my_profile.jsp");
                }
            }
            else
            {
                System.out.println("exit 2nd");
                out.println("<script>alert('Something Went Wrong <----> Entered Incorrect Details');window.open('my_profile.jsp','_top')</script>");
            }
        }
        else
        {
            System.out.println("enter 1st");
            out.println("<script>alert('Something Went Wrong <----> Entered Incorrect Details');window.open('my_profile.jsp','_top')</script>");
        }
        }
        catch(Exception e)  
        {
            out.println(""+e);
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
