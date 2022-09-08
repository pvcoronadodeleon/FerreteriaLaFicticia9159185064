/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

import java.sql.ResultSet;
import conexion.ConexionMySQL;

/**
 *
 * @author pvcor
 */
public class FuncionesLogin {

    public Integer IniciarSesion(String usuario, String contra) {
        Integer IdUsuario = 0;
        try {
            ConexionMySQL con = new ConexionMySQL();
            con.ConectarBasedeDatos();
            String sql = "select u.IDUsuario from usuario u where u.Usuario = '" + usuario + "' and u.Contra = MD5('" + contra + "')";
            ResultSet rs = con.sentencia.executeQuery(sql);
            while (rs.next()) {
                IdUsuario = rs.getInt("IDUsuario");
            }
            con.DesconectarBasedeDatos();
        } catch (Exception e) {

        }
        return IdUsuario;
    }
}
