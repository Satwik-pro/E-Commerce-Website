/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Satwik
 */
public class signin extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signin at " + request.getContextPath() + "</h1>");
            
            String n=request.getParameter("username1");
            String p=request.getParameter("userpass1");
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/userbase1","userbase1","userbase1");
                PreparedStatement stmt1 = con.prepareStatement("select * from userbase1 where uname=? and upass=?");
                stmt1.setString(1, n);
                stmt1.setString(2, p);
                ResultSet rs = stmt1.executeQuery();
                if(rs.next()){
                    if(rs.getString(1).equals(n) && rs.getString(2).equals(p)){
                    response.sendRedirect("shop.jsp");
                    }
                    else{
                        response.sendRedirect("index.jsp");
                    }
                }
                    else{
                    response.sendRedirect("index.jsp");
                }
            }
            catch(Exception e){
                System.out.println(e);
                out.println(e);
            }
            out.println("</body>");
            out.println("</html>");
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
