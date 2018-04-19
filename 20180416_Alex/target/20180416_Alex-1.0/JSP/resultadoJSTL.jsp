<%-- 
    Document   : resultadoJSTL
    Created on : 19-abr-2018, 2:30:16
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
        <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/CSS/estilos.css"/>
    </head>
    <body class="contenido">
        <%@include file="../INC/cabecera.inc"%>
        
        <h3>El resultado de la operación <c:out value="${datos.operando1}"/> <c:out value="${datos.signo}"/> <c:out value="${datos.operando2}"/> es <c:out value="${datos.resultado}"/></h3>
                
        <a href="<c:out value="${pageContext.request.contextPath}"/>">Volver</a>
    </body>
</html>
