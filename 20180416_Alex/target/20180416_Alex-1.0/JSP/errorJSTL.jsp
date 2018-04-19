<%-- 
    Document   : errorJSTL
    Created on : 19-abr-2018, 2:30:07
    Author     : Alex
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/CSS/estilos.css"/>
    </head>
    <body class="contenido">
        <h3>No se puede dividir entre 0.</h3>
        <a href="<c:out value="${pageContext.request.contextPath}"/>">Volver</a>
    </body>
</html>
