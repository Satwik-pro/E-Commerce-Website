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
public class purchase extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList it_list = (ArrayList) session.getAttribute("itemlist");


        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/userbase1", "userbase1", "userbase1");
//            PreparedStatement stmt = con.prepareStatement("select * from product where id=?");
//            stmt.setString(1, "1");
//            ResultSet rs = stmt.executeQuery();
            for (int i = 0; i < it_list.size(); i++) {
            classes.Item itm = (Item) it_list.get(i);


            int total=0;
            PreparedStatement stmt1 = con.prepareStatement("select * from product");
                ResultSet rs = stmt1.executeQuery();
                while(rs.next()) {
                    total+=1;
                }
                total+=1;
             String t=Integer.toString(total);



            PreparedStatement stmt = con.prepareStatement("insert into product values(?,?,?)");
            stmt.setString(1, t);
            stmt.setString(2, itm.name);
            String s=Integer.toString(itm.price);
            stmt.setString(3, s);
            int j = stmt.executeUpdate();
            }
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }





        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        ArrayList newlist = new ArrayList();
        int newval = 0;

        HttpSession mysession = request.getSession();
        mysession.setAttribute("purch", "true");
        mysession.setAttribute("itemlist", newlist);
        mysession.setAttribute("total", newval);
        response.sendRedirect("success.jsp");
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
