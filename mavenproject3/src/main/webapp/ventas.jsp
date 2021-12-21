<%-- 
    Document   : ventas
    Created on : 20 dic. 2021, 18:48:25
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
        <%! int num = 189; double num2 = 34.8;
        double suma(){
            return num+num2;
        }
        %>
        <% String nombre= "tomas";
            String usuario = request.getParameter("usuario");
            out.println("<p>"+suma()+"</p>");
                       
         %>
         <h1>hello <%= usuario%></h1>
         <p><%java.util.Date fecha = new java.util.Date();%><%=fecha%></p>
    </body>
</html>
