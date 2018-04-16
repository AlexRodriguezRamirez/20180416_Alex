<%-- 
    Document   : resultado
    Created on : 17-abr-2018, 0:26:20
    Author     : Alex
--%>

<%@page import="es.albarregas.beans.Calculadora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css"/>
    </head>
    <body class="contenido">
        <%@include file="/INC/cabecera.inc"%>
        <%
            Calculadora miCalculadora = (Calculadora) request.getAttribute("datos");
        %>
        
        <h3>El resultado de la operación <%=miCalculadora.getOperando1()%> <%=miCalculadora.getSigno()%> <%=miCalculadora.getOperando2()%> es <%=miCalculadora.getResultado()%></h3>
        
        
        <a href="<%=request.getContextPath()%>">Volver</a>
    </body>
</html>
