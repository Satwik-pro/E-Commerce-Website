<%-- 
    Document   : shop
    Created on : 11 Mar, 2021, 9:56:01 PM
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
                margin-left:70px;
                color: burlywood;
                background-color: black;
                padding: 7px 15px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            }
            .delete {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:70px;
                color: burlywood;
                background-color: black;
                padding: 7px 10px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            }
            .update {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:70px;
                color: burlywood;
                background-color: black;
                padding: 7px 10px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            } 
            .home {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:70px;
                color: burlywood;
                background-color: black;
                padding: 7px 45px;
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
        <h1><center>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Enjoy Shopping</center></h1>
        <div class = "vertical"></div>
        <div style="margin: 50px 100px 100px 50px;float:right;">
            <img src="shoe.png" width="950" height="550"/>
        </div>
        <form action="shop.jsp" method="post">
            <button class="home">Home</button>
        </form>
        <br><br>
        <form action="doupdate.jsp" method="post">
            <button class="update">Update-details</button>
        </form>
        <br><br>
        <form action="doshow.jsp" method="post">
            <button class="show">Show-details</button>
        </form>
        <br><br>
        <form action="dodelete.jsp" method="post">
            <button class="delete">Delete-details</button>
        </form>
        <br><br>
        <form action="index2.jsp" method="post">
            <button class="cart">Cart</button>
        </form>
        <br><br>
        <form action="yourorder.jsp" method="post">
            <button class="order">Your Orders</button>
        </form>
        <br><br>
        <form action="shop.jsp" method="post">
            <button class="order">Customer-Care</button>
        </form>
    </body>
</html>