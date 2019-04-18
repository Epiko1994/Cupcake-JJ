<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                    <input type="hidden" name="command" value="mypage">
                    <input type="submit" value="My Page">

                </form>

            </ul>
        </div>
    </nav>
</div>

<div class="row">
    <div class="col-md-3 text-center">
        <label>Bund:</label>
        <select class="form-control" name="bottom">
            <option value="0" disabled selected>Vælg bund
                    <%
/*
                    List<BundCake> bundList = (List<BundCake>) request.getAttribute("cupcake");

                    for (int i = 0; i < bundList.size() ; i++) {
                        String bundOption = "";

                        String printBundID = Integer.toString(bundList.get(i).getBundID());
                        String printBundNavn = bundList.get(i).getNavnBund()+"  "+Integer.toString(bundList.get(i).getPrisBund());

                        bundOption = "<option value=\"_printBundID_\">_printBundNavn_</option>";
                        bundOption = bundOption.replace("_printBundNavn_",printBundNavn);
                        bundOption = bundOption.replace("_printBundID_",printBundID);
                        out.println(bundOption);
                    }  */
                %>
        </select>
    </div>

    <div class="col-md-3 text-center">
        <label>Topping:</label>
        <select class="form-control" name="top">
            <option value="0" disabled selected>Vælg top
                    <%
/*
                    List<TopCake> topList = (List<TopCake>) request.getAttribute("toplisten");

                    for (int i = 0; i < topList.size() ; i++) {
                        String topOption = "";

                        String printTopID = Integer.toString(topList.get(i).getTopID());
                        String printTopNavn = topList.get(i).getNavnTop()+"  "+Integer.toString(topList.get(i).getPrisTop());
                        //String printTopID = (String) request.getAttribute("topList.get(i).getTopID()");
                        //String printTopNavn = (String) request.getAttribute("topList.get(i).getNavnTop()");


                        topOption = "<option value=\"printTopID\">printTopNavn</option>";
                        topOption = topOption.replace("printTopNavn",printTopNavn);
                        topOption = topOption.replace("printTopID",printTopID);
                        out.println(topOption);

                    }   */
                %>
        </select>
    </div>

    <div class="col-md-3 text-center">
        <label>Antal:</label>
        <select class="form-control" name="number">
            <option value="0" disabled selected>Vælg antal
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
        </select>
    </div>



        <% String error = (String) request.getAttribute( "error");
           if ( error != null) { 
               out.println("<H2>Error!!</h2>");
               out.println(error);
           }
        %>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
