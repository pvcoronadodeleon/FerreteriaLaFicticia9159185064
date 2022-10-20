<%-- 
    Document   : listausuarios
    Created on : Oct 13, 2022, 12:33:39 AM
    Author     : pvcor
--%>


<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="funciones.FuncionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ferreteria La Ficticia</title>
    </head>
    <body>
        <jsp:include page="masterpage/header.jsp"/>
        <table>
            <%
                FuncionesUsuario funcionesUsuario = new FuncionesUsuario();
                DefaultTableModel listadoDeUsuarios = funcionesUsuario.ListarUsuarios();
                if (listadoDeUsuarios.getRowCount() > 0) {
                    for (int i = 0; i < listadoDeUsuarios.getRowCount(); i++) {
                    
                        out.println("<tr><td><a href='datosusuario.jsp?IDUsuario=" + listadoDeUsuarios.getValueAt(i, 0).toString() + "'>" + listadoDeUsuarios.getValueAt(i, 0).toString() + "</a></td><td>" + listadoDeUsuarios.getValueAt(i, 1).toString() + "</td><td>" + listadoDeUsuarios.getValueAt(i, 2).toString() + "</td><td>" + listadoDeUsuarios.getValueAt(i, 3).toString() + "</td></tr>");
                    }
                }
            %>
        </table>
    </body>
</html>
