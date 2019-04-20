<%@ page import="java.util.List" %>
<%@ page import="FunctionLayer.TopCake" %><%--
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
                    List<TopCake> topCakeList2 = (List<TopCake>) request.getAttribute("toplist");

                    for(int i = 0; i < topCakeList2.size(); i++) {
                        String  topOption = "";
                        String printtop_id = Integer.toString(topCakeList2.get(i).getTop_id());
                        String printtop_navn = topCakeList2.get(i).getTop_name()+"  "+Integer.toString(topCakeList2.get(i).getTop_price());

                        topOption = "<option value=\"printtop_id\">printtop_navn</option>";
                        topOption = topOption.replace("printtop_navn",printtop_navn);
                        topOption = topOption.replace("printtop_id",printtop_id);
                        out.println(topOption);


                    }
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
