package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConexionMySQL {

    public Connection conexion;
    public Statement sentencia;

//    public void ConectarBasedeDatos() {
//        try {
//            final String Controlador = "com.mysql.jdbc.Driver";
//            Class.forName(Controlador);
//            final String url_bd = "jdbc:mysql://localhost:3306/ferreterialaficticia";
//            conexion = DriverManager.getConnection(url_bd, "FerreFict", "Ferre123");
//            sentencia = conexion.createStatement();
//        } catch (ClassNotFoundException | SQLException ex) {
//            
//        }
//    }
    public void ConectarBasedeDatos() {
        try {
            final String Controlador = "com.mysql.jdbc.Driver";
            Class.forName(Controlador);
            final String url_bd = "jdbc:mysql://sql433.main-hosting.eu:3306/u558288393_ferreterialf";
            conexion = DriverManager.getConnection(url_bd, "u558288393_FerreFict", "#Ferre123");
            sentencia = conexion.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {

        }
    }

    public void DesconectarBasedeDatos() {
        try {
            if (conexion != null) {
                if (sentencia != null) {
                    sentencia.close();
                }
                conexion.close();
            }
        } catch (SQLException ex) {

        }
    }

    public Connection getConnection() {
        return conexion;
    }
}
