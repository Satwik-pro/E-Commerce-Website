<%-- 
    Document   : deleteproduct
    Created on : 27 Mar, 2021, 9:56:39 PM
    Author     : Satwik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1 {
                font-family: 'Baloo Bhai 2', cursive;
            }
            body {
                background-image: url('cart.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            .bg {
                padding-left:50px;
            }
            .container {
                border: 12px blue;
                margin: 500px;
                padding: 20px;
                width: 33%;
                margin-top: 70px;
                border-radius: 70px;
            }
            .form-group input {
                font-family: 'Baloo Bhai 2', cursive;
                text-align: center;
                display: block;
                width: 370px;
                padding: 8px;
                font-size: 18px;
                border: 2px solid grey;
                border-radius: 20px;
                margin: 30px;
            }
            .container h1 {
                text-align: center;
            }
            .container button {
                display: block;
                width: 42%; 
            } 
            .signin {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:130px;
                color: burlywood;
                background-color: black;
                padding: 7px 10px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            }  
        </style>
    </head>
    <body>
        <h1 style="background-color:white;"><center>DELETE PRODUCT</center></h1>
            <div class="bg"></div>
            <div class="container">
                <form action="deleteproduct" method="post">
                <div class="form-group">
                    <input type="text" name="id" placeholder="ID">
                </div>
                <button class="signin">DELETE NOW</button>
                </form>
            </div>
    </body>
</html>
