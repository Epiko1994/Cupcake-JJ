<%--
  Created by IntelliJ IDEA.
  User: Epiko
  Date: 16-04-2019
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file = "../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>

<table>
    <tr><td>Login</td>
        <td>
            <form name="login" action="FrontController" method="POST">
                <input type="hidden" name="command" value="login">
                Email:<br>
                <input type="text" name="email" value="">
                <br>
                Password:<br>
                <input type="password" name="password" value="">
                <br>
                <input type="submit" value="Submit">
            </form>
        </td>
        <td>Or Register</td>
        <td>
            <form name="register" action="FrontController" method="POST">
                <input type="hidden" name="command" value="register">
                Email:<br>
                <input type="text" name="email" value="">
                <br>
                Password:<br>
                <input type="password" name="password1" value="">
                <br>
                Retype Password:<br>
                <input type="password" name="password2" value="">
                <br>
                <input type="submit" value="Submit">
            </form>
        </td>
    </tr>
</table>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
