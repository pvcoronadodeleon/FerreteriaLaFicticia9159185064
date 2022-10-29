<%-- 
    Document   : listaproductos
    Created on : Oct 28, 2022, 5:44:06 PM
    Author     : pvcor
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="funciones.FuncionesProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ferreteria La Ficticia</title>
        <link href="resources/lib/bootstrap-5.2.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <jsp:include page="masterpage/header.jsp"/>
            </div>
            <div class="row">
                <table class="table">
                    <tr><th>Id Producto</th><th>Nombre producto</th><th>Precio (Q)</th><th>Cantidad</th></tr>
                    <%
                        FuncionesProducto funcionesProducto = new FuncionesProducto();
                        DefaultTableModel listadoDeProductos = funcionesProducto.listarProductos();
                        if (listadoDeProductos.getRowCount() > 0) {
                            for (int i = 0; i < listadoDeProductos.getRowCount(); i++) {
                                out.println("<tr><td><a href='datosproducto.jsp?IDProducto=" + listadoDeProductos.getValueAt(i, 0).toString() + "'>" + listadoDeProductos.getValueAt(i, 0).toString()  + "</a></td><td>" + listadoDeProductos.getValueAt(i, 1).toString() + "</td><td>" + listadoDeProductos.getValueAt(i, 2).toString() + "</td><td>" + listadoDeProductos.getValueAt(i, 3).toString() + "</td></tr>");
                            }
                        }
                    %>
                </table>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="resources/lib/bootstrap-5.2.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
