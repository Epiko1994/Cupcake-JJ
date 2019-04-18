<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    </head>
    <body>

    <div class="container text-center" id="banner">
        <img id="logo-main" src="img/logo.png" width="146">
    </div>
    <div class="container" id="navbar">
        <nav class="navbar navbar-expand-md navbar-light bg-light">
            <a href="index.jsp" class="navbar-brand"><img src="img/cupcake.svg" width="30" height="30"
                                                          class="d-inline-block align-top" alt="" style="opacity: 0.5"></a>
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

                    <form name="register" id="register_button" action="FrontController" method="GET">

                        <input type="hidden" name="command" value="registerpage">
                        <input type="submit" value="Registrer/Login">

                    </form>

                    <form>

                        <input type="hidden" name="command" value="customerpage">
                        <input type="submit" value="My Page">

                    </form>

                </ul>
            </div>
        </nav>
    </div>

        <h1>Hello <%=request.getParameter( "email")%> </h1>
        You are now logged in as a EMPLOYEE of our wonderful site.

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
