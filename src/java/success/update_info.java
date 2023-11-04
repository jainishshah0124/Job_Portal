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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jainish Shah
 */
public class update_info extends HttpServlet {

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
        HttpSession session=request.getSession();
        if(session.getAttribute("role").equals("company"))
        {
            String name=request.getParameter("txt_name");
            String org=request.getParameter("txt_org");
            String mob=request.getParameter("txt_mob");
            String a_mob=request.getParameter("txt_a_mob");
            String desc=request.getParameter("txt_desc"); 
            String location;
            if(request.getParameter("txt_state").equals("0"))
            {
                location=request.getParameter("state");
            }
            else{
                location=request.getParameter("txt_state");
            }
            String address=request.getParameter("txt_address");
           try{
               Connection con=Config.connection.getConnection();
               PreparedStatement psmt=con.prepareStatement("update tbl_company set name=?,organization=?,mobile=?,alt_mobile=?,company_desc=?,location=?,address=? where email='"+session.getAttribute("uname")+"'");
               psmt.setString(1, name);
               psmt.setString(2, org);
               psmt.setString(3, mob);
               psmt.setString(4, a_mob);
               psmt.setString(5, desc);
               psmt.setString(6, location);
               psmt.setString(7, address);
               psmt.executeUpdate();
               response.sendRedirect("my_profile_company.jsp");
           }
           catch(Exception e)
           {
               
           }
        }
        else{
            
        String fname=request.getParameter("txt_fname");
        String lname=request.getParameter("txt_lname");
        String dob=request.getParameter("txt_dob");
        String location=request.getParameter("txt_state");
        String mobile=request.getParameter("txt_mobile");
        if(request.getParameter("txt_res").equals(null))
        {
            int res;
            res = 0;
        }
        int res=Integer.parseInt(request.getParameter("txt_res"));
        String prof=request.getParameter("txt_proskill");
        String exp=request.getParameter("txt_exp");
        String degree=request.getParameter("txt_degree");
        String clg=request.getParameter("txt_college");
        String year=request.getParameter("txt_year");
        String per=request.getParameter("txt_per");
        String interest=request.getParameter("txt_interest");
        String career=request.getParameter("txt_career");
        if(degree=="" || degree==null || year=="" || year==null)
        {
            System.out.println("asdsadas");
        }
        else{
            try{
                System.out.println("enter");
                Connection con=Config.connection.getConnection();
                PreparedStatement psmt=con.prepareStatement("insert into tbl_education(email,degree,college,year,per) values('"+session.getAttribute("uname")+"','"+degree+"','"+clg+"','"+year+"','"+per+"')");
//                psmt.setString(2, session.getAttribute("uname").toString());
//                psmt.setString(3, degree);
//                psmt.setString(4, clg);
//                psmt.setString(5, year);
//                psmt.setString(6, per);
                psmt.executeUpdate();
            }
            catch(Exception e)
            {
                out.println(""+e);
                System.out.println(""+e);
            }
        }
        if(location.equals("0"))
        {
            location=request.getParameter("state");
        }
        try{
            Connection con=Config.connection.getConnection();
            PreparedStatement psmt=con.prepareStatement("update tbl_user set fname = ?,lname = ?,mobile=?,state=?,interest=?,career=?,dob=?,res=?,skill=?,exp=? where email='"+session.getAttribute("uname")+"'");
            psmt.setString(1,fname);
            psmt.setString(2,lname);
            psmt.setString(3,mobile);
            psmt.setString(4,location);
            psmt.setString(5,interest);
            psmt.setString(6,career);
            psmt.setString(7,dob);
            psmt.setInt(8,res);
            psmt.setString(9,prof);
            psmt.setString(10,exp);
            psmt.executeUpdate();
            response.sendRedirect("my_profile.jsp");
        }
        catch(Exception e){
            out.print(""+e);
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
