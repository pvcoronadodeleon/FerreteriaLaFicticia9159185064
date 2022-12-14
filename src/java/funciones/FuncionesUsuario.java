/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

import clases.Usuario;
import static java.lang.Integer.parseInt;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author pvcor
 */
public class FuncionesUsuario {

    public Usuario ObtenerUsuario(Integer codigoUsuario) {
        FuncionesDatos datos = new FuncionesDatos();
        Usuario usuario = new Usuario();
        String consulta;
        consulta = "select u.IDUsuario , u.Usuario , u.Nombre , u.Apellido , u.Telefono , u.Direccion , u.IdRolUsuario , u.Activo  from usuario u where u.IDUsuario = " + codigoUsuario.toString();
        DefaultTableModel datosUsuario = datos.CargarTabla(consulta);
        if (datosUsuario.getRowCount() > 0) {
            if (datosUsuario.getValueAt(0, 0) != null) {
                usuario.setIdUsuario(parseInt(datosUsuario.getValueAt(0, 0).toString()));
            }
            if (datosUsuario.getValueAt(0, 1) != null) {
                usuario.setUsuario(datosUsuario.getValueAt(0, 1).toString());
            }
            if (datosUsuario.getValueAt(0, 2) != null) {
                usuario.setNombre(datosUsuario.getValueAt(0, 2).toString());
            }
            if (datosUsuario.getValueAt(0, 3) != null) {
                usuario.setApellido(datosUsuario.getValueAt(0, 3).toString());
            }
            if (datosUsuario.getValueAt(0, 4) != null) {
                usuario.setTelefono(datosUsuario.getValueAt(0, 4).toString());
            }
            if (datosUsuario.getValueAt(0, 5) != null) {
                usuario.setDireccion(datosUsuario.getValueAt(0, 5).toString());
            }
            if (datosUsuario.getValueAt(0, 6) != null) {
                usuario.setCodigoRolUsuario(parseInt(datosUsuario.getValueAt(0, 6).toString()));
            }
            if (datosUsuario.getValueAt(0, 7) != null) {
                usuario.setActivo(Boolean.valueOf(datosUsuario.getValueAt(0, 7).toString()));
            }
        }
        return usuario;
    }

    public Integer IniciarSesion(String usuario, String contra) {
        FuncionesDatos datos = new FuncionesDatos();
        Integer IdUsuario = 0;
        try {
            String sql = "select u.IDUsuario from usuario u where u.Usuario = '" + usuario + "' and u.Contra = MD5('" + contra + "')";
            IdUsuario = datos.retonarEntero(sql);
        } catch (Exception e) {

        }
        return IdUsuario;
    }

    public void CrearUsuario(Usuario usuario, String contra) {
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "insert into usuario (usuario, contra, nombre, apellido, telefono, direccion, idRolUsuario) values ('" + usuario.getUsuario() + "',MD5('" + contra + "'),'"
                    + usuario.getNombre() + "','" + usuario.getApellido() + "','" + usuario.getTelefono() + "','" + usuario.getDireccion() + "',7)";
            datos.insertarmodificareliminar(sql);
        } catch (Exception e) {

        }
    }

    public void ActualizarUsuario(Usuario usuario) {
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "update usuario ";
            sql += "set ";
            sql += "Nombre = '" + usuario.getNombre() + "', ";
            sql += "Apellido = '" + usuario.getApellido() + "', ";
            sql += "Usuario = '" + usuario.getUsuario() + "', ";
            sql += "Telefono = '" + usuario.getTelefono() + "', ";
            sql += "Direccion = '" + usuario.getDireccion() + "' ";
            sql += "where IDUsuario = " + usuario.getIdUsuario();
            datos.insertarmodificareliminar(sql);
        } catch (Exception e) {

        }
    }

    public DefaultTableModel ListarUsuarios() {
        DefaultTableModel datosUsuario;
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "SELECT u.IDUsuario, u.Nombre, u.Apellido, u.Usuario  FROM usuario u ";
             datosUsuario = datos.CargarTabla(sql);
             return datosUsuario;
        } catch (Exception e) {
            return null;
        }
    }
}
