<%-- 
    Document   : showproduct
    Created on : 27 Mar, 2021, 9:56:22 PM
    Author     : Satwik
--%>

<%@page import="classes.Item"%>
<%@page import="java.util.ArrayList"%>
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
        <style type="text/css">
            body {
                background-image: url('shopback.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            <!--
            .container {
                height: 850px;
                width: 900px;
                margin:auto;
            }
            .mycontent {
                float: left;
                height: 650px;
                width: 900px;
            }
            .myfooter {
                float: left;
                height: 100px;
                width: 900px;
                border-top-width:3px;
                border-top-style:solid;
                border-top-color:#FFCC00;
            }
            .cartof {
                float: left;
                height: 25px;
                width: 900px;
                font-family: Verdana, Geneva, sans-serif;
                font-weight: bold;
                padding-top:5px;
            }
            .prod1 {
                float: left;
                height: 100px;
                width: 900px;
                border-bottom-width:1px;
                border-bottom-style:solid;
                border-bottom-color:#FFCC00;
            }
            td{
                padding-left:5px;
                color:#900;
                font-family:Verdana, Geneva, sans-serif;
            }
            .items {
                float: left;
                height: auto;
                width: 900px;
            }
            .myitems {
                float: left;
                height: 200px;
                width: 600px;
                border-right-width:1px;
                border-right-style:solid;
                border-right-color:#FFCC00;
                overflow: auto;
            }
            th{
                color:#FFF;
                font-family:Verdana, Geneva, sans-serif;
                font-weight:normal;
                background-color:#900;
            }
            .total {
                float: left;
                height: 180px;
                width: 285px;
                font-family: Verdana, Geneva, sans-serif;
                font-size: 24px;
                font-weight: bold;
                padding-top:20px;
                padding-left:10px;
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
                border: 1px solid black;
                text-align: left;
                padding: 6px;
            }
            tr {
                background-color: #dddddd;
            }
            -->
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Image</th>
            </tr>
                    <% 
                        try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:derby://localhost:1527/userbase1", "userbase1", "userbase1");
                PreparedStatement stmt1 = con.prepareStatement("select * from showproduct");

                ResultSet rs = stmt1.executeQuery();
                while (rs.next()) {
                    PreparedStatement pstmt1 = con.prepareStatement("select * from product");
//                    out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3));
                    String a1 = rs.getString(1);
                    String a2 = rs.getString(2);
                    String a3 = rs.getString(3);
                    String a4 = rs.getString(4);
                    String a5 = rs.getString(5);
                    String a6 = rs.getString(6);
                    
                    %>
            <tr>
                <td><%out.print(a1);%></td>
                <td><%out.print(a2);%></td>
                <td><%out.print(a3);%></td>
                <td><%out.print(a4);%></td>
                <td><img src=<%out.print(a5);%> width="90" height="90" /></td>
            </tr>
                    <%
                }
            } catch (Exception e) {
                System.out.println(e);
                out.println(e);
            }
                    %>
                    </table>
                        </div>
    </body>
</html>
