package pe.unsch.sistemaescalafonario.entity;
// Generated 21-mar-2018 18:08:39 by Hibernate Tools 4.3.1



/**
 * Gradoacademico generated by hbm2java
 */
public class Gradoacademico  implements java.io.Serializable {


     private int id;
     private Empleado empleado;
     private String grado;
     private String nombreinstitucion;
     private String condicion;
     private Integer fechaconclusion;

    public Gradoacademico() {
    }

	
    public Gradoacademico(int id, Empleado empleado, String grado, String nombreinstitucion, String condicion) {
        this.id = id;
        this.empleado = empleado;
        this.grado = grado;
        this.nombreinstitucion = nombreinstitucion;
        this.condicion = condicion;
    }
    public Gradoacademico(int id, Empleado empleado, String grado, String nombreinstitucion, String condicion, Integer fechaconclusion) {
       this.id = id;
       this.empleado = empleado;
       this.grado = grado;
       this.nombreinstitucion = nombreinstitucion;
       this.condicion = condicion;
       this.fechaconclusion = fechaconclusion;
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
    public String getGrado() {
        return this.grado;
    }
    
    public void setGrado(String grado) {
        this.grado = grado;
    }
    public String getNombreinstitucion() {
        return this.nombreinstitucion;
    }
    
    public void setNombreinstitucion(String nombreinstitucion) {
        this.nombreinstitucion = nombreinstitucion;
    }
    public String getCondicion() {
        return this.condicion;
    }
    
    public void setCondicion(String condicion) {
        this.condicion = condicion;
    }
    public Integer getFechaconclusion() {
        return this.fechaconclusion;
    }
    
    public void setFechaconclusion(Integer fechaconclusion) {
        this.fechaconclusion = fechaconclusion;
    }




}

