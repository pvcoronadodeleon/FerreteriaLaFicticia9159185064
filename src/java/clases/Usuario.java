/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clases;

/**
 *
 * @author pvcor
 */
public class Usuario {
    private Integer idUsuario;
    private String usuario;
    private String nombre;
    private String apellido;
    private String telefono;
    private String direccion;
    private Integer codigoRolUsuario;
    private Boolean activo;

    public Usuario() {
    }

    public Usuario(Integer idUsuario, String usuario, String nombre, String apellido, String telefono, String direccion, Integer codigoRolUsuario, Boolean activo) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.direccion = direccion;
        this.codigoRolUsuario = codigoRolUsuario;
        this.activo = activo;
    }



    public Integer getIdUsuario() {
        return idUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public Integer getCodigoRolUsuario() {
        return codigoRolUsuario;
    }

    public Boolean getActivo() {
        return activo;
    }
    
    

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setCodigoRolUsuario(Integer codigoRolUsuario) {
        this.codigoRolUsuario = codigoRolUsuario;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }
    
    
    
}
