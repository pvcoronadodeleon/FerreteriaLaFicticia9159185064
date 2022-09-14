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
            usuario.setIdUsuario(parseInt(datosUsuario.getValueAt(0, 0).toString()));
            usuario.setUsuario(datosUsuario.getValueAt(0, 1).toString());
            usuario.setNombre(datosUsuario.getValueAt(0, 2).toString());
            usuario.setApellido(datosUsuario.getValueAt(0, 3).toString());
            usuario.setTelefono(datosUsuario.getValueAt(0, 4).toString());
            usuario.setDireccion(datosUsuario.getValueAt(0, 5).toString());
            usuario.setCodigoRolUsuario(parseInt(datosUsuario.getValueAt(0, 6).toString()));
            usuario.setActivo(Boolean.valueOf(datosUsuario.getValueAt(0, 7).toString()));
        }
        return usuario;
    }

    public Integer IniciarSesion(String usuario, String contra) {
        FuncionesDatos datos = new FuncionesDatos();
        Integer IdUsuario = 0;
        try {
            String sql = "select u.IDUsuario from usuario u where u.Usuario = '" + usuario + "' and u.Contra = MD5('" + contra + "') and Activo = 1";
            IdUsuario = datos.retonarEntero(sql);
        } catch (Exception e) {

        }
        return IdUsuario;
    }
}
