<%-- 
    Document   : datosproducto
    Created on : Oct 28, 2022, 10:17:37 PM
    Author     : pvcor
--%>

<%@page import="funciones.FuncionesProducto"%>
<%@page import="clases.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos de producto</title>
        <link href="resources/lib/bootstrap-5.2.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <jsp:include page="masterpage/header.jsp"/>
            </div>
            <div class="row">
                <%
                    Integer IDProducto;
                    IDProducto = Integer.parseInt(request.getParameter("IDProducto"));
                    Producto producto = new Producto();
                    FuncionesProducto funcionesProducto = new FuncionesProducto();
                    producto = funcionesProducto.ObtenerProducto(IDProducto);
                %>
                <div class="row">
                    <form name="DatosProducto" action="ModificarProducto" method="post">
                        <div class="row">
                            <div class="column"><label for="idproducto">IDProducto </label></div>
                            <div class="column"><input type="text" name="idproducto" readonly="readonly" value="<%out.println(producto.getIdProducto());%>"/></div>
                        </div>
                        <div class="row">
                            <div class="column"><label for="nombre">Nombre </label></div>
                            <div class="column"><input type="text" name="nombre" value="<%out.println(producto.getNombre());%>"/></div>
                        </div>
                        <div class="row">
                            <div class="column"><label for="cantidad">Cantidad </label></div>
                            <div class="column"><input type="text" name="cantidad" readonly="readonly" value="<%out.println(producto.getCantidad());%>"/></div>
                        </div>
                        <div class="row">
                            <div class="column"><label for="precio">Precio </label></div>
                            <div class="column"><input type="text" name="precio" value="<%out.println(producto.getPrecio());%>"/></div>
                        </div>
                        <div class="row">
                            <div><input type="submit" value="Modificar" class="btn btn-info" style="margin-top: 5px;"/></div>
                        </div>
                    </form>
                    <form name="EliminarProducto" action="EliminarProducto" method="post">
                        <input type="text" name="idproducto" style="display: none;" readonly="readonly" value="<%out.println(producto.getIdProducto());%>"/>
                        <div class="row">
                            <div><input type="submit" value="Eliminar" class="btn btn-info" style="margin-top: 5px;"/></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="resources/lib/bootstrap-5.2.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
