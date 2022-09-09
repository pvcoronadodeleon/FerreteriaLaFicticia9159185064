/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

import conexion.ConexionMySQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.DefaultComboBoxModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author pvcor
 */
public class FuncionesDatos {

    ConexionMySQL con = new ConexionMySQL();

    public void insertarmodificareliminar(String consulta) {
        con.ConectarBasedeDatos();
        try {
            con.sentencia.executeUpdate(consulta);
        } catch (Exception e) {

        } finally {
            con.DesconectarBasedeDatos();
        }
    }

    public Integer retonarEntero(String consulta) {
        Integer valor = 0;
        con.ConectarBasedeDatos();
        try ( ResultSet rs = con.sentencia.executeQuery(consulta)) {
            while (rs.next()) {
                valor = rs.getInt(1);
            }
        } catch (Exception e) {

        } finally {
            con.DesconectarBasedeDatos();
        }
        return valor;
    }

    public Double retonarDecimal(String consulta) {
        Double valor = 0.0;
        con.ConectarBasedeDatos();
        try ( ResultSet rs = con.sentencia.executeQuery(consulta)) {
            while (rs.next()) {
                valor = rs.getDouble(1);
            }
        } catch (Exception e) {

        } finally {
            con.DesconectarBasedeDatos();
        }
        return valor;
    }

    public String retornarString(String consulta) {
        String cadena = "";
        con.ConectarBasedeDatos();
        try ( ResultSet rs = con.sentencia.executeQuery(consulta)) {
            while (rs.next()) {
                cadena = rs.getString(1);
            }
        } catch (Exception e) {

        } finally {
            con.DesconectarBasedeDatos();
        }
        return cadena;
    }
    
    public Boolean retornarBooleano(String consulta) {
        con.ConectarBasedeDatos();
        try ( ResultSet rs = con.sentencia.executeQuery(consulta)) {
            while (rs.next()) {
                return rs.getBoolean(1);
            }
        } catch (Exception e) {

        } finally {
            con.DesconectarBasedeDatos();
        }
        return false;
    }
    
    

    public DefaultComboBoxModel CargarCombobox(String Consulta) {
        DefaultComboBoxModel combobox = new DefaultComboBoxModel();
        try {
            con.ConectarBasedeDatos();
            ResultSet rs = con.sentencia.executeQuery(Consulta);
            while (rs.next()) {
                combobox.addElement(rs.getString(1));
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            con.DesconectarBasedeDatos();
        }
        return combobox;
    }

    public DefaultTableModel CargarTabla(String Consulta) {
        DefaultTableModel tabla = null;
        try {
            con.ConectarBasedeDatos();
            ResultSet rs = con.sentencia.executeQuery(Consulta);
            String[] titulos = new String[rs.getMetaData().getColumnCount()];
            for (int Columna = 1; Columna <= rs.getMetaData().getColumnCount(); Columna++) {
                titulos[Columna - 1] = rs.getMetaData().getColumnName(Columna);
            }
            tabla = new DefaultTableModel(null, titulos);
            while (rs.next()) {
                String[] Datos = new String[rs.getMetaData().getColumnCount()];
                for (int Columna = 1; Columna <= rs.getMetaData().getColumnCount(); Columna++) {
                    Datos[Columna - 1] = rs.getString(Columna);
                }
                tabla.addRow(Datos);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            con.DesconectarBasedeDatos();
        }
        return tabla;
    }
}
