/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import classes.Item;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dilukshan Mahendra
 */
public class requesthandle extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        response.setContentType("text/html;charset=UTF-8");
        // PrintWriter out = response.getWriter();

        HttpSession mysession = request.getSession();
        ArrayList mycart = (ArrayList) mysession.getAttribute("itemlist");
        
        int value = (Integer) mysession.getAttribute("total");
        
        try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:derby://localhost:1527/userbase1", "userbase1", "userbase1");
                PreparedStatement stmt1 = con.prepareStatement("select * from showproduct");
                ResultSet rs = stmt1.executeQuery();
                while (rs.next()) 
                {
                        String x = request.getParameter(rs.getString(6));
                        if (x != null) 
                        {
                            int p = Integer.parseInt(rs.getString(4));
                            Item myitem = new Item(rs.getString(1), rs.getString(2), p);
                            value = value + p;
                            mycart.add(myitem);
                            mysession.setAttribute("itemlist", mycart);
                            mysession.setAttribute("total", value);
                            response.sendRedirect("shop2.jsp");
                        }
                }
            } catch (Exception e) {
                System.out.println(e);
                out.println(e);
            }
        String chk = request.getParameter("chkout");
        String logout = request.getParameter("logout");
        String pressdel = request.getParameter("del");
        if (chk != null) 
        {
            mysession.setAttribute("chk", chk);
            response.sendRedirect("checkout.jsp");
        } 
        else if (logout != null) 
        {
            mysession.invalidate();
            response.sendRedirect("emptycart");
        } 
        else if (pressdel != null)
        {
            Item item_to_Delete = (Item) mycart.get(Integer.parseInt(pressdel));
            value = value - item_to_Delete.price;
            mysession.setAttribute("total", value);
            mycart.remove(Integer.parseInt(pressdel));
            mysession.setAttribute("tod", pressdel);
            response.sendRedirect("shop2.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
