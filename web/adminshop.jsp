<%-- 
    Document   : adminshop
    Created on : 21 Mar, 2021, 5:56:54 PM
    Author     : Satwik
--%>

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
        </style>
    </head>
    <body>
    <center>
        <h1>Admin Site</h1>
        <form action="addproduct.jsp" method="post">
            <button class="home">Insert-product</button>
        </form>
        <br><br>
        <form action="updateproduct.jsp" method="post">
            <button class="update">Update-product</button>
        </form>
        <br><br>
        <form action="showproduct.jsp" method="post">
            <button class="show">Show-product</button>
        </form>
        <br><br>
        <form action="deleteproduct.jsp" method="post">
            <button class="delete">Delete-product</button>
        </form>
        <br><br>
        <form action="userdetails.jsp" method="post">
            <button class="delete">All-User-Details</button>
        </form>
    </center>
    </body>
</html>
