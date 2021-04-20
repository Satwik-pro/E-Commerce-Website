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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Satwik
 */
public class signup extends HttpServlet {

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
            out.println("<title>Servlet signup</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signup at " + request.getContextPath() + "</h1>");
            
            String n=request.getParameter("username2");
            String p=request.getParameter("userpass2");
            String p1=request.getParameter("userpass1");
            String a=request.getParameter("email");
            String b=request.getParameter("phone");
            String c=request.getParameter("country");
            
            int l1 = n.length();
            int l2 = p.length();
            int l3 = p1.length();
            int l4 = a.length();
            int l5 = b.length();
            int l6 = c.length();
            
            if(l1 == 0 || l2 == 0 || l3 == 0 || l4 == 0 || l5 == 0 || l6 == 0)
            {
                request.setAttribute("n", n);
                request.setAttribute("p", p);
                request.setAttribute("p1", p1);
                request.setAttribute("a", a);
                request.setAttribute("b", b);
                request.setAttribute("c", c);
                RequestDispatcher dispatcher = request.getRequestDispatcher("emptyerror.jsp");
                dispatcher.forward(request, response);
            }
            
            int flag = 1;
            if(b.length() != 8 && b.length() != 10)
                flag=0;
            else
            {
                for(int i=0;i<b.length();i++)
                {
                    Boolean z = Character.isDigit(b.charAt(i));
                    if(z){}
                    else
                    {
                        flag=0;
                        break;
                    }
                }
            }
            
            if (p1.equals(p)) {
            try{
                if(flag == 1)
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/userbase1","userbase1","userbase1");
                    PreparedStatement pstmt=con.prepareStatement("insert into userbase1 values(?,?,?,?,?)");
                    pstmt.setString(1,n);
                    pstmt.setString(2,p);
                    pstmt.setString(3,a);
                    pstmt.setString(4,b);
                    pstmt.setString(5,c);
                    pstmt.executeUpdate();
                    response.sendRedirect("signupdone.jsp");
                }
                else
                {
                    request.setAttribute("n", n);
                    request.setAttribute("p", p);
                    request.setAttribute("p1", p1);
                    request.setAttribute("a", a);
                    request.setAttribute("b", b);
                    request.setAttribute("c", c);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("phoneerror.jsp");
                    dispatcher.forward(request, response);
                }
            }
            catch(Exception e){
                System.out.println(e);
                out.println(e);
            }
             }
             else
             {
                 request.setAttribute("n", n);
                 request.setAttribute("p", p);
                 request.setAttribute("p1", p1);
                 request.setAttribute("a", a);
                 request.setAttribute("b", b);
                 request.setAttribute("c", c);
                RequestDispatcher dispatcher = request.getRequestDispatcher("passerror.jsp");
                dispatcher.forward(request, response);
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
