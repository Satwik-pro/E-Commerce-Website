<%-- 
    Document   : cart
    Created on : 22 Mar, 2021, 9:21:19 PM
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
        <div class="container" style="margin: 50px 70px 70px 50px;float:left;">
            <p><img src="shoes.jfif" width="200" height="200"/></p>
            <b><h2><center>Shoes</center></h2></b>
            <h2>No. of Items : 1</h2>
            <h2>Price : 800</h2>
            <h2>Remove from cart</h2>
        </div>
        <div class="container" style="margin: 50px 100px 70px 50px;float:left;">
            <p><img src="watch.jpg" width="200" height="200"/></p>
            <b><h2><center>Watch</center></h2></b>
            <h2>No. of Items : 1</h2>
            <h2>Price : 500</h2>
            <h2>Remove from cart</h2>
        </div> 
        <div class="container" style="margin: 50px 150px 70px 50px;float:left;">
            <p> <img src="shirt.jpg" width="200" height="200"/></p>
            <b><h2><center>T-Shirt</center></h2></b>
            <h2>No. of Items : 2</h2>
            <h2>Price : Free</h2>
            <h2>Remove from cart</h2>
        </div>
        <div class="container" style="margin: 50px 150px 70px 50px;float:left;">
            <p> <img src="rucksack.jpg" width="200" height="200"/></p>
            <b><h2><center>Rucksack</center></h2></b>
            <h2>No. of Items : 1</h2>
            <h2>Price : 1000</h2>
            <h2>Remove from cart</h2>
        </div>
        <form action="deliver.jsp" method="post">
            <center><button class="order">ORDER NOW</button></center>
        </form>
    </body>
</html>
