<%-- 
    Document   : shop
    Created on : Jun 8, 2013, 12:33:37 AM
    Author     : Dilukshan Mahendra
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="classes.Item" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title>Shopping Cart - Shop</title>
        <style type="text/css">
            body {
                background-image: url('shop3back.jpg');
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
            .headbanner {
                float: left;
                height: 80px;
                width: 900px;
                vertical-align:middle;
                background-color:black;
            }
            .container .headbanner h1 {
                font-family: Verdana, Geneva, sans-serif;
                color: white;
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
                border-top-color:grey;
            }
            .container .myfooter h3 {
                font-family: Verdana, Geneva, sans-serif;
                font-size: 12px;
                color:#CC3300;
            }
            .cartof {
                float: left;
                height: 25px;
                width: 900px;
                font-family: Verdana, Geneva, sans-serif;
                font-weight: bold;
                padding-top:5px;
            }
            .cartcontent {
                float: left;
                height: 200px;
                width: 900px;
                background-color:white;
                border-width:10px;
                border-style:solid;
                border-color:black;
            }
            .prod1 {
                float: left;
                height: 100px;
                width: 900px;
                border-bottom-width:10px;
                border-bottom-style:solid;
                border-bottom-color:black;
            }
            td{
                padding-left:60px;
                color:black;
                font-family:Verdana, Geneva, sans-serif;

            }
            .items {
                float: left;
                height: auto;
                width: 500px;
            }
            tr.border_bottom td {
                border-bottom-width:5px;
                border-bottom-style:solid;
                border-bottom-color:black;
                height:100px;
            }
            .myitems {
                float: left;
                height: 200px;
                width: 600px;
                border-right-width:5px;
                border-right-style:solid;
                border-right-color:black;
                overflow: auto;
            }
            th{
                color:white;
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
            -->
        </style>
    </head>
    <body style="margin:0; padding:0">


        <div class="container">
            <form action="requesthandle" method="post"> 
                <div class="headbanner">
                    <h1 style="display:inline">
                        <center>
                            <img src="img/shopping.png" />[My Shopping Cart]
                        </center>
                    </h1>
                </div>
                <div class="mycontent">
                    <div class="cartof">
                        <center><a style="color: black;">Cart Of [<% out.print("Satwik");%>]<input name="logout" type="submit" value="Logout"></input></a></center>
                    </div>
                    <div class="cartcontent">
                        <div class="myitems">
                            <table width="600px" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th>ID</th> 
                                    <th>Item</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                                <%if (session.getAttribute("itemlist") != null) {
                                        ArrayList mycart = (ArrayList) session.getAttribute("itemlist");
                                        for (int i = 0; i < mycart.size(); i++) {
                                            Item it = (Item) mycart.get(i);
                                %>
                                <tr>
                                    <td align="center"><%out.print(i);%></td>
                                    <td align="center"><%out.print(it.name);%></td> 
                                    <td align="center"><%out.print(it.price);%></td>
                                    <td align="center"><input name="del" type="submit" value="Delete" onclick="this.value=<%out.print(i);%>"></input></td>
                                </tr>
                                <%}
                                    }
                                %>    
                            </table>
                        </div>
                        <div class="total">
                            <a>My Total : $[<% out.print(session.getAttribute("total"));%>]</a><br />
                            <a style="font-size:14px">Total Qty: [<% ArrayList il = (ArrayList) session.getAttribute("itemlist");
                       out.print(il.size());%>]</a><br />
                            <input name="chkout" type="submit" value="Checkout" />
                        </div>
                    </div>
                            <center>
        <table>
            <tr>
                <th>#ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Image</th>
                <th>Options</th>
            </tr>
                    <% 
                        try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:derby://localhost:1527/userbase1", "userbase1", "userbase1");
                PreparedStatement stmt1 = con.prepareStatement("select * from showproduct");
                ResultSet rs = stmt1.executeQuery();
                while (rs.next()) {
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
                <td><input name="<%out.print(a6);%>" type="submit" value="Add to Cart"/></td>
            </tr>
                    <%
                }
            } catch (Exception e) {
                System.out.println(e);
                out.println(e);
            }
                    %>
                        </table>
                            </center>
                    </div>
                </div>
                        <center>
            </form>
                        <br><br><br><br><br><br><br>
                     <form action="shop.jsp" method="post">
            <button class="order">Home</button>
        </form>     
                        </center>
        </div>
        
    </body>
</html>

