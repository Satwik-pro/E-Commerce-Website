<%-- 
    Document   : home
    Created on : 22 Mar, 2021, 9:20:59 PM
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
        <div class="container" style="margin: 50px 70px 700px 50px;float:right;">
            <p><img src="fashion.jpg" width="300" height="400"/></p>
            <b><h2><center>Fashion Accessories</center></h2></b>
        </div>
        <div class="container" style="margin: 50px 100px 700px 50px;float:right;">
            <p><img src="fitness.jpg" width="350" height="350"/></p>
            <b><h2><center>Fitness  Products</center></h2></b>
        </div> 
        <div class="container" style="margin: 50px 150px 700px 50px;float:right;">
            <p> <img src="grocery.jpg" width="350" height="350"/></p>
            <b><h2><center>Grocery Products</center></h2></b>
        </div>
    </body>
</html>
