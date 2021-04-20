<%-- 
    Document   : index
    Created on : 11 Mar, 2021, 12:02:57 PM
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
                margin: 100px;
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
                margin-left:135px;
                color: burlywood;
                background-color: black;
                padding: 7px 20px;
                border: 2px solid grey;
                border-radius: 20px;
                font-size: 18px;
                cursor: pointer;
            }  
            fieldset {
                background-color: greenyellow;
            }
        </style>
    </head>
    <body>
        <h1 style="background-color:white;"><center>Shopping Website</center></h1>
            <div class="bg"></div>
            <center>
            <div class="container"> 
                <fieldset>
                <form action="signin" method="post">
                <div class="form-group">
                    <input type="text" name="username1" placeholder="User Name">
                </div>
                <div class="form-group">
                    <input type="password" name="userpass1" placeholder="Password">
                </div>
                <button class="signin">SIGN-IN</button>
                </form>
                </fieldset>
                <br>
                
                <form action="signup.jsp" method="post">
                <button class="signin">SIGN-UP</button>
                </form>
                
                <br>
                <fieldset>
                <form action="admin" method="post">
                <div class="form-group">
                    <input type="text" name="useradmin1" placeholder="User Name">
                </div>
                <div class="form-group">
                    <input type="password" name="useradmin1" placeholder="Password">
                </div>
                    <button class="signin">ADMIN LOGIN</button>
                </form>
                </fieldset>
            </div>
            </center>
    </body>
</html>
