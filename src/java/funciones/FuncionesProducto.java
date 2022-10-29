/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

import clases.Producto;
import static java.lang.Integer.parseInt;
import static java.lang.Double.parseDouble;
import javax.swing.table.DefaultTableModel;
import java.text.DecimalFormat;

/**
 *
 * @author pvcor
 */
public class FuncionesProducto {

    public Producto ObtenerProducto(Integer codigoProducto) {
        FuncionesDatos datos = new FuncionesDatos();
        Producto producto = new Producto();
        String consulta;
        consulta = "select p.IdProducto, p.Nombre, p.Precio, p.Cantidad, p.Apartado from Producto p where p.IdProducto = " + codigoProducto.toString();
        DefaultTableModel datosProducto = datos.CargarTabla(consulta);
        if (datosProducto.getRowCount() > 0) {
            if (datosProducto.getValueAt(0, 0) != null) {
                producto.setIdProducto(parseInt(datosProducto.getValueAt(0, 0).toString()));
            }
            if (datosProducto.getValueAt(0, 1) != null) {
                producto.setNombre(datosProducto.getValueAt(0, 1).toString());
            }
            if (datosProducto.getValueAt(0, 2) != null) {
                producto.setPrecio(parseDouble(datosProducto.getValueAt(0, 2).toString()));
            } else {
                producto.setPrecio(0.00);
            }
            if (datosProducto.getValueAt(0, 3) != null) {
                producto.setCantidad(parseInt(datosProducto.getValueAt(0, 3).toString()));
            } else {
                producto.setCantidad(0);
            }
            if (datosProducto.getValueAt(0, 4) != null) {
                producto.setApartado(parseInt(datosProducto.getValueAt(0, 4).toString()));
            } else {
                producto.setApartado(0);
            }
        }
        return producto;
    }

    public void crearProducto(Producto producto) {
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "insert into Producto (nombre,precio) values ('" + producto.getNombre() + "'," + String.format("%.2f", producto.getPrecio()) + ")";
            datos.insertarmodificareliminar(sql);
        } catch (Exception e) {

        }
    }

    public void eliminarProducto(Producto producto) {
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "delete from Producto where IdProducto = " + producto.getIdProducto();
            datos.insertarmodificareliminar(sql);
        } catch (Exception e) {

        }
    }

    public void modificarPrecio(Producto producto) {
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "update Producto set precio = " + producto.getPrecio() + " where IdProducto = " + producto.getIdProducto();
            datos.insertarmodificareliminar(sql);
        } catch (Exception e) {

        }
    }

    public void modificarCantidad(Producto producto, Integer cantidad) {
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "update Producto set cantidad = " + cantidad + "+ cantidad where IdProducto = " + producto.getIdProducto();
            datos.insertarmodificareliminar(sql);
        } catch (Exception e) {

        }
    }

    public Integer obtenerCantidadDisponible(Producto producto) {
        FuncionesDatos datos = new FuncionesDatos();
        Integer cantidad, apartado;
        String consulta = "select p.Cantidad from Producto p where p.IdProducto = " + producto.getIdProducto();
        cantidad = datos.retonarEntero(consulta);
        consulta = "select p.Apartado from Producto p where p.IdProducto = " + producto.getIdProducto();
        apartado = datos.retonarEntero(consulta);
        return cantidad - apartado;
    }

    public Integer obtenerCantidad(Producto producto) {
        FuncionesDatos datos = new FuncionesDatos();
        Integer cantidad, apartado;
        String consulta = "select p.Cantidad from Producto p where p.IdProducto = " + producto.getIdProducto();
        cantidad = datos.retonarEntero(consulta);
        return cantidad;
    }

    public void ActualizarProducto(Producto producto) {
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "update Producto set nombre = '" + producto.getNombre()  + "', precio = " + producto.getPrecio() + " where IdProducto = " + producto.getIdProducto();
            datos.insertarmodificareliminar(sql);
        } catch (Exception e) {

        }
    }

    public DefaultTableModel listarProductos() {
        DefaultTableModel datosProducto;
        FuncionesDatos datos = new FuncionesDatos();
        try {
            String sql = "select p.IdProducto, p.Nombre, p.Precio, p.Cantidad, p.Apartado from Producto p";
            datosProducto = datos.CargarTabla(sql);
            return datosProducto;
        } catch (Exception e) {
            return null;
        }
    }
}
