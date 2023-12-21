<%-- 
    Document   : home
    Created on : Dec 21, 2023, 7:30:17 PM
    Author     : ndiep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category List</title>
        <link rel="stylesheet" href="assets/css/mdb.min.css"/>
    </head>
    <body>
        
        
        
        
        <h1>Hello World!</h1>
        <c:forEach items="${listCategory}" var="category">
            <c:out value="${category.name}"></c:out><br>
        </c:forEach>
        <c:forEach items="${listProduct}" var="product">
            <c:out value="${product.name}"></c:out><br>
        </c:forEach>
            <script src="asset/js/mdb.min.js"></script>
    </body>
</html>
