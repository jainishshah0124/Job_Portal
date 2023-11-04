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
public class register_company_success extends HttpServlet {

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
        PrintWriter out=response.getWriter();
         MultipartRequest m=new MultipartRequest(request,"C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\Job_protal\\web\\image\\company\\New_Company");
            String name=m.getParameter("txt_name");
            String org=m.getParameter("txt_org");
            String email=m.getParameter("txt_email");
            String mob=m.getParameter("txt_mob");
            String alt=m.getParameter("txt_altmob");
            String comp_desc=m.getParameter("txt_desc");
            String location=m.getParameter("location");
            String add=m.getParameter("txt_address");
            String url="C:\\Users\\Jainish Shah\\Documents\\NetBeansProjects\\Job_protal\\web\\image\\company\\New_Company\\"+m.getParameter("txt1").substring(12);
            System.out.println(""+url);
            try{
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("insert into tbl_company(name,organization,email,mobile,alt_mobile,company_desc,location,address,logo_src) values('"+name+"','"+org+"','"+email+"','"+mob+"','"+alt+"','"+comp_desc+"','"+location+"','"+add+"',?)");
                psmt.setString(1, url);
                psmt.executeUpdate();
                out.println("Insert Complete");
            }
            catch(Exception e)
            {
                System.out.println(""+e);
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
