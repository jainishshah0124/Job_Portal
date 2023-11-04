/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package success;

import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jainish Shah
 */
public class register_success extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            MultipartRequest m=new MultipartRequest(request,"C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\Job_protal\\web\\image\\user");
            String fname=m.getParameter("txt_fname");
            String lname=m.getParameter("txt_lname");
            String mob=m.getParameter("txt_mob");
            String email=m.getParameter("txt_email");
            String pass=m.getParameter("txt_pass");
            String info=m.getParameter("txt_info");
            String sector=m.getParameter("ddl_sector");
            String state=m.getParameter("ddl_state");
            String gender=m.getParameter("gender");
            System.out.println(""+fname);
            System.out.println(""+lname);
            System.out.println(""+mob);
            System.out.println(""+gender);
            System.out.println(""+sector);
            System.out.println(""+m.getParameter("txt1"));
            String url="C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\Job_protal\\web\\image\\user\\"+m.getParameter("txt1").substring(12);
            System.out.println(""+url);
            try {
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("insert into tbl_user(fname,lname,mobile,email,password,info,sector,state,active,gender,src) values('"+fname+"','"+lname+"','"+mob+"','"+email+"',AES_ENCRYPT('"+pass+"','key'),'"+info+"','"+sector+"','"+state+"',0,'"+gender+"',?)");
                psmt.setString(1, url);
                psmt.executeUpdate();
                psmt=con.prepareStatement("insert into tbl_login_master values(null,'"+email+"',AES_ENCRYPT('"+pass+"','key'),0)");
                psmt.executeUpdate();
                response.sendRedirect("http://localhost:8080/Job_protal/Login_page.jsp");
            } catch (Exception e) {
                System.out.println(""+e);
            }
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
