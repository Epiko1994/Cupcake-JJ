<%--
  Created by IntelliJ IDEA.
  User: Epiko
  Date: 16-04-2019
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <tr><td>Login</td>
        <td>
            <form name="login" action="FrontController" method="POST">
                <input type="hidden" name="command" value="login">
                Email:<br>
                <input type="text" name="email" value="someone@nowhere.com">
                <br>
                Password:<br>
                <input type="password" name="password" value="sesam">
                <br>
                <input type="submit" value="Submit">
            </form>
        </td>
        <td>Or Register</td>
        <td>
            <form name="register" action="FrontController" method="POST">
                <input type="hidden" name="command" value="register">
                Email:<br>
                <input type="text" name="email" value="someone@nowhere.com">
                <br>
                Password:<br>
                <input type="password" name="password1" value="sesam">
                <br>
                Retype Password:<br>
                <input type="password" name="password2" value="sesam">
                <br>
                <input type="submit" value="Submit">
            </form>
        </td>
    </tr>
</table>

</body>
</html>