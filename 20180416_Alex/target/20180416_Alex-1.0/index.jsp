<%-- 
    Document   : index
    Created on : 16-abr-2018, 23:51:07
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora MVC</title>
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css"/>
    </head>
    <body class="contenido">
        <%@include file="INC/cabecera.inc"%>
        <form action="controlador" method="post">
            <table>
                <tr>
                    <td><label for="Operando1">Introduzca el primer operando: </label></td>
                    <td><input type="number" name="Operando1" required="required"></td>
                </tr>
                <tr>
                    <td><label for="Operando2">Introduzca el segundo operando: </label></td>
                    <td><input type="number" name="Operando2" required="required"></td>
                </tr>
                <tr>
                    <td><label>Seleccione una operaci&oacute;n: </label></td>
                    <td>
                        <input type="radio" name="Operacion" value="Suma" checked="checked"><label>Suma</label>
                        <input type="radio" name="Operacion" value="Resta"><label>Resta</label><br>
                        <input type="radio" name="Operacion" value="Multiplicacion"><label>Multiplicaci&oacute;n</label>
                        <input type="radio" name="Operacion" value="Division"><label>Divisi&oacute;n</label>
                    </td>
                </tr>
                <tr>
                    <td class="enviar"><input type="submit" name="Enviar" value="Enviar"></td>
                    <td class="limpiar"><input type="reset" name="Limpiar" value="Limpiar"></td>
                </tr>
            
            </table>
        </form>
    </body>
</html>
