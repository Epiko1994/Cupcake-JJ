<%@ page import="FunctionLayer.User" %><%--
  Created by IntelliJ IDEA.
  User: Jeppe
  Date: 05-04-2019
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="img/favicon.ico" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome page</title>
</head>
<body>
<div class="container text-center" id="banner">
    <img id="banner-main" src="img/cupcakebaggrund.png">
</div>
<div class="container" id="navbar">
    <nav class="navbar navbar-expand-md navbar-light bg-light">
        <a href="index.jsp" class="navbar-brand"><img id="home_button" src="img/logo.png" class="d-inline-block align-top"></a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarMenu">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a href="index.jsp" class="nav-link ">Forside</a>
                </li>
                <li class="nav-item">
                    <a href="bestil" class="nav-link">Bestil</a>
                </li>

                <form name="register" id="register_button" action="FrontController" method="POST">

                    <input type="hidden" name="command" value="registerpage">
                    <input type="submit" value="Registrer/Login">

                </form>

                <%
                    String userEmail = (String)session.getAttribute("email");
                    String userRole = (String)session.getAttribute("role");
                    if (userRole == null) {
                        userRole = "";
                    }
                    if (userRole.equals("admin") || userRole.equals("customer")) {

                %>

                <div id="Mypage_button">
                    <form name="MyPage" action="FrontController" method="POST">

                        <input type="hidden" name="command" value="mypage">
                        <input type="hidden" name="role" value="<%=userRole%>">
                        <input type="submit" value="My Page">

                    </form>
                </div>


                <p>

                    <%=userEmail%>

                </p>

                <% } %>

            </ul>
        </div>
    </nav>
</div>