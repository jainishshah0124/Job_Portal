package success;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jainish Shah
 */
public class post_job_success extends HttpServlet {

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
        String name=request.getParameter("txt_job");
        String max_sal=request.getParameter("txt_max");
        String min_sal=request.getParameter("txt_min");
        String mob=request.getParameter("txt_mob");
        String location=request.getParameter("ddl_location");
        String sector=request.getParameter("ddl_sector");
        String exp=request.getParameter("txt_exp");
        String expire=request.getParameter("txt_expire");
        String desc=request.getParameter("txt_job_desc");
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        System.out.println(dateFormat.format(date));
//            String skill="";
//            for(String s:fav)
//            {
//                skill=skill+s;
//            }
        String[] fav=request.getParameterValues("skill");
            String skill="";
            for(String s:fav)
            {
                skill=skill+",";
                skill=skill+s;
            }
        HttpSession session=request.getSession();
        PreparedStatement psmt;
        ResultSet rs;
        try{
            psmt=Config.connection.getConnection().prepareStatement("select * from tbl_company where email='"+session.getAttribute("uname")+"'");
            rs=psmt.executeQuery();
            rs.next();
            Connection con=Config.connection.getConnection();
            psmt=con.prepareStatement("insert into tbl_jobs(c_id,job_title,min_sal,max_sal,mobile,job_location,sector,min_exp,posted_date,expire_date,job_desc,skill) values('"+rs.getString("id")+"','"+name+"','"+min_sal+"','"+max_sal+"','"+mob+"','"+location+"','"+sector+"','"+exp+"','"+dateFormat.format(date)+"','"+expire+"','"+desc+"','"+skill.substring(1)+"')");
            psmt.executeUpdate();
            response.sendRedirect("company_home.jsp");
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
