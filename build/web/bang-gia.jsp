<%-- 
    Document   : bang-gia
    Created on : Jun 16, 2022, 1:07:14 AM
    Author     : SE150436 - Hoàng Quang Hòa
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sample.price.PriceDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Price Page</title>
    </head>
    <body>
        <form action="MainController" method="POST">
            <input type="submit" name="action" value="Display">
        </form>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="list" items="${sessionScope.LIST_PRICE}" varStatus="counter">

                    <tr>
                        <td>${list.getId()}</td>
                        <td>${list.getName()}</td> 
                        <td>${list.getPrice()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>