<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Recipes app</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>


<%--    Аналог if else if--%>
<%--sessionScope.user делает это session.getAttribute("user")--%>
    <c:choose>
        <c:when test="${sessionScope.user == null}">
            <c:redirect url="auth"/>
        </c:when>

        <c:otherwise>
            <c:import url="header.html"/>
        </c:otherwise>
    </c:choose>

<%--    <a href="create_recipe.jsp">Create recipe</a>--%>
<%--    <a href="all_recipes.jsp">All recipes</a>--%>
<%--    <a href="auth">Auth</a>--%>
<%--    <a href="register">Register</a>--%>




</body>
</html>