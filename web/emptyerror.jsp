<%-- 
    Document   : emptyerror
    Created on : 29 Mar, 2021, 3:45:19 PM
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
            .form-group2 input {
                font-family: 'Baloo Bhai 2', cursive;
                text-align: center;
                display: block;
                width: 370px;
                padding: 8px;
                font-size: 18px;
                border: 2px solid grey;
                border-radius: 20px;
                margin: 5px;
            }
            .form-group3 input {
                font-family: 'Baloo Bhai 2', cursive;
                text-align: center;
                display: block;
                width: 370px;
                padding: 8px;
                font-size: 18px;
                border: 2px solid grey;
                border-radius: 20px;
                margin: 20px;
            }
            .container h1 {
                text-align: center;
            }
            .container button {
                display: block;
                width: 42%; 
            } 
            .error {
                margin-top: 0px;
                font-size: 18px;
                color: red;
            } 
            .update {
                font-family: 'Baloo Bhai 2', cursive;
                margin: 1px 170px;
                margin-left:170px;
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
        <center>
            <%
                String n=request.getParameter("username2");
                String p=request.getParameter("userpass2");
                String p1=request.getParameter("userpass1");
                String a=request.getParameter("email");
                String b=request.getParameter("phone");
                String c=request.getParameter("country");   
            %>
        <form action="signup" method="post">
            <div class="form-group">
                    <input type="text" name="username2" placeholder="*User Name" value="<%out.print(n);%>">
                </div>
            <div class="form-group">
                    <input type="password" name="userpass2" placeholder="*Password" value="<%out.print(p);%>">
                </div>
            <div class="form-group">
                    <input type="password" name="userpass1" placeholder="*Confirm Password" value="<%out.print(p1);%>">
                </div>
            <div class="form-group">
                    <input type="text" name="email" placeholder="*E-mail" value="<%out.print(a);%>">
                </div>
            <div class="form-group">
                    <input type="text" name="phone" placeholder="*Phone No." value="<%out.print(b);%>">
                </div>
            <div class="form-group2">
                    <input type="text" name="country" placeholder="*Country" value="<%out.print(c);%>">
                    <div class="error">* Fields are Mandatory !!</div>
                </div>
            <button class="update">Register</button>
        </form>
        </center>
    </body>
</html>
