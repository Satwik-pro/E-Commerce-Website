<%-- 
    Document   : userdetails
    Created on : 29 Mar, 2021, 1:37:38 PM
    Author     : Satwik
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background-image: url('shopback.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            .show {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:165px;
                color: burlywood;
                background-color: black;
                padding: 7px 50px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            }
            .delete {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:165px;
                color: burlywood;
                background-color: black;
                padding: 7px 50px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            }
            .update {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:165px;
                color: burlywood;
                background-color: black;
                padding: 7px 50px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            } 
            .home {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:165px;
                color: burlywood;
                background-color: black;
                padding: 7px 50px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            } 
            .cart {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:70px;
                color: burlywood;
                background-color: black;
                padding: 7px 50px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            } 
            .order {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:70px;
                color: burlywood;
                background-color: black;
                padding: 7px 15px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            } 
            .vertical { 
                border-left: 6px solid black; 
                height: 600px; 
                position:absolute; 
                left: 20%; 
            }
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }
            tr {
                background-color: #dddddd;
            }
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>User-Name</th>
                <th>User-Pass</th>
                <th>E-Mail</th>
                <th>Phone No</th>
                <th>Country</th>
            </tr>
            <% 
                        try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:derby://localhost:1527/userbase1", "userbase1", "userbase1");
                PreparedStatement stmt1 = con.prepareStatement("select * from userbase1");
                ResultSet rs = stmt1.executeQuery();
                while (rs.next()) {
                    String a1 = rs.getString(1);
                    String a2 = rs.getString(2);
                    String a3 = rs.getString(3);
                    String a4 = rs.getString(4);
                    String a5 = rs.getString(5);
                    %>
            <tr>
                <td><%out.print(a1);%></td>
                <td><%out.print(a2);%></td>
                <td><%out.print(a3);%></td>
                <td><%out.print(a4);%></td>
                <td><%out.print(a5);%></td>
            </tr>
            <%
                }
            } catch (Exception e) {
                System.out.println(e);
                out.println(e);
            }
                    %>
        </table>
    </body>
</html>
