<%@ page import="java.util.List" %>
<%@ page import="FunctionLayer.TopCake" %>
<%@ page import="FunctionLayer.BottomCake" %><%--
<%--
  Created by IntelliJ IDEA.
  User: Jeppe
  Date: 19-04-2019
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bestil</title>
</head>
<body>

<div class="row">


    <div class="col-md-3 text-center">
        <label>Topping:</label>
        <select class="form-control" name="top">
            <option value="0" disabled selected>Vælg top
                    <%
                    List<TopCake> topCakeList = (List<TopCake>) request.getAttribute("toplist");

                    for(int i = 0; i < topCakeList.size(); i++) {
                        String  topOption = "";
                        String printtop_id = Integer.toString(topCakeList.get(i).getTop_id());
                        String printtop_navn = topCakeList.get(i).getTop_name()+"  " +
                            topCakeList.get(i).getTop_price() + " kr";

                        topOption = "<option value=\"printtop_id\">printtop_navn</option>";
                        topOption = topOption.replace("printtop_navn",printtop_navn);
                        topOption = topOption.replace("printtop_id",printtop_id);
                        out.println(topOption);
                    }
                %>
        </select>
    </div>

    <div class="col-md-3 text-center">
        <label>Bund:</label>
        <select class="form-control" name="bottom">
            <option value="0" disabled selected>Vælg bund

                    <%
                    List<BottomCake> bottomCakeList = (List<BottomCake>) request.getAttribute("bottomlist");

                    for(int i = 0; i < bottomCakeList.size(); i++) {
                        String  bottomOption = "";
                        String printbottom_id = Integer.toString(bottomCakeList.get(i).getBottom_id());
                        String printbottom_navn = bottomCakeList.get(i).getBottom_name()+"  " +
                            bottomCakeList.get(i).getBottom_price() + " kr";

                        bottomOption = "<option value=\"printbottom_id\">printbottom_navn</option>";
                        bottomOption = bottomOption.replace("printbottom_navn",printbottom_navn);
                        bottomOption = bottomOption.replace("printbottom_id",printbottom_id);
                        out.println(bottomOption);
                    }
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
