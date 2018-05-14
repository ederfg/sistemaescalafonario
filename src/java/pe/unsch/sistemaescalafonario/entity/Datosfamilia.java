package pe.unsch.sistemaescalafonario.entity;
// Generated 21-mar-2018 18:08:39 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Datosfamilia generated by hbm2java
 */
public class Datosfamilia  implements java.io.Serializable {


     private int id;
     private Empleado empleado;
     private String dniconyugue;
     private String appatconyugue;
     private String apmatconyugue;
     private String nombresconyugue;
     private Date fechanacimiconyugue;
     private String celularconyugue;
     private String nombreemergencia;
     private String celularemergencia;
    

    public Datosfamilia() {
    }

	
    public Datosfamilia(int id, Empleado empleado, String dniconyugue, String appatconyugue, String apmatconyugue, String nombresconyugue, Date fechanacimiconyugue) {
        this.id = id;
        this.empleado = empleado;
        this.dniconyugue = dniconyugue;
        this.appatconyugue = appatconyugue;
        this.apmatconyugue = apmatconyugue;
        this.nombresconyugue = nombresconyugue;
        this.fechanacimiconyugue = fechanacimiconyugue;
    }
    public Datosfamilia(int id, Empleado empleado, String dniconyugue, String appatconyugue, String apmatconyugue, String nombresconyugue, Date fechanacimiconyugue, String celularconyugue, String nombreemergencia, String celularemergencia) {
       this.id = id;
       this.empleado = empleado;
       this.dniconyugue = dniconyugue;
       this.appatconyugue = appatconyugue;
       this.apmatconyugue = apmatconyugue;
       this.nombresconyugue = nombresconyugue;
       this.fechanacimiconyugue = fechanacimiconyugue;
       this.celularconyugue = celularconyugue;
       this.nombreemergencia = nombreemergencia;
       this.celularemergencia = celularemergencia;
       
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    public String getDniconyugue() {
        return this.dniconyugue;
    }
    
    public void setDniconyugue(String dniconyugue) {
        this.dniconyugue = dniconyugue;
    }
    public String getAppatconyugue() {
        return this.appatconyugue;
    }
    
    public void setAppatconyugue(String appatconyugue) {
        this.appatconyugue = appatconyugue;
    }
    public String getApmatconyugue() {
        return this.apmatconyugue;
    }
    
    public void setApmatconyugue(String apmatconyugue) {
        this.apmatconyugue = apmatconyugue;
    }
    public String getNombresconyugue() {
        return this.nombresconyugue;
    }
    
    public void setNombresconyugue(String nombresconyugue) {
        this.nombresconyugue = nombresconyugue;
    }
    public Date getFechanacimiconyugue() {
        return this.fechanacimiconyugue;
    }
    
    public void setFechanacimiconyugue(Date fechanacimiconyugue) {
        this.fechanacimiconyugue = fechanacimiconyugue;
    }
    public String getCelularconyugue() {
        return this.celularconyugue;
    }
    
    public void setCelularconyugue(String celularconyugue) {
        this.celularconyugue = celularconyugue;
    }
    public String getNombreemergencia() {
        return this.nombreemergencia;
    }
    
    public void setNombreemergencia(String nombreemergencia) {
        this.nombreemergencia = nombreemergencia;
    }
    public String getCelularemergencia() {
        return this.celularemergencia;
    }
    
    public void setCelularemergencia(String celularemergencia) {
        this.celularemergencia = celularemergencia;
    }
    


}

