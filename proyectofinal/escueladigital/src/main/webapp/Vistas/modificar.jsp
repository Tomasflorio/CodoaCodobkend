<%-- 
    Document   : modificar
    Created on : 20 dic. 2021, 22:21:24
    Author     : tomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Alumno</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./estilo.css">
    </head>
    <body>
        <h1 class="text-center">Modificar Alumno</h1>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <form class="p-5 w-50" action="AlumnosController?accion=actualizar" method="POST">
                    <div class="mb-3">
                        <label for="id"></label>
                        <input type="hidden" class="form-control" id="id" name="id" value=<%=datos.id%>/>
                    </div>
                    <div class="mb-3">
                        <label for="nombres">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value=<%=datos.nombres%>/>
                    </div>
                    <div class="mb-3">
                        <label for="apellidos">Apellido</label> 
                        <input type="text" class="form-control" id="apellido" name="apellido" value=<%=datos.apellidos%>/>
                    </div>
                    <div class="mb-3">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="emaiñ" name="email" value=<%=datos.email%>/>
                    </div>
                    <div class="mb-3">
                        <label for="telefono">Telefono</label>
                        <input type="text" class="form-control" id="teñefono" name="telefono" value=<%=datos.telefono%>/>
                    </div>
                    <button type="submit" class="btn btn-primary">Agregar</button>
                </form>
            </div>
        </div>
    </body>
</html>
