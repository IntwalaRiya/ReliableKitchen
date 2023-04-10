<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:c="http://java.sun.com/jsp/jstl/core">

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
            <title>Shortfall Orders</title>
        </head>
        <body>
            <div>
                <h1 align="center">Shortfall Order List</h1>
            </div>
            <div>
                <table class="table table-striped">
                    <tr>
                        <th scope="col">
                            <c:out value="Shortfall Order Id" />
                        </th>
                        <th scope="col">
                            <c:out value="Shortfall Ingredient Name" />
                        </th>
                        <th scope="col">
                            <c:out value="Shortfall Quantity"/>
                        </th>
                    </tr>
                    <c:forEach var="shortfallOrderlist" items="${shortfallOrdersList}">
                        <tr>
                            <td>
                                <c:out value="${shortfallOrderlist.retailerOrderId}" />
                            </td>
                            <td>
                                <c:out value="${shortfallOrderlist.ingredientName}" />
                            </td>
                            <td>
                                <c:out value="${shortfallOrderlist.shortfallQuantity}" />
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </body>

        </html>
