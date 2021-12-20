<%-- 
    Document   : ventas
    Created on : 14 dic. 2021, 11:14:59
    Author     : tomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombre="tomas";
            String usuario = request.getParameter("usuario");
        %>
        <h1>Hello <%= nombre%></h1>
    </body>
</html>
