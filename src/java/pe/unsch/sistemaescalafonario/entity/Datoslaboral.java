package pe.unsch.sistemaescalafonario.entity;
// Generated 21-mar-2018 18:08:39 by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.Date;

/**
 * Datoslaboral generated by hbm2java
 */
public class Datoslaboral  implements java.io.Serializable {


     private int id;
     private Empleado empleado;
     private Date fechaingresoinst;
     private String condicionlaboral;
     private String tipocontrato;
     private String puesto;
     private String facultad;
     private BigDecimal ingmensualbruto;
     private String cese;
     private Date fechacese;

    public Datoslaboral() {
    }

	
    public Datoslaboral(int id, Empleado empleado, Date fechaingresoinst, String condicionlaboral) {
        this.id = id;
        this.empleado = empleado;
        this.fechaingresoinst = fechaingresoinst;
        this.condicionlaboral = condicionlaboral;
    }
    public Datoslaboral(int id, Empleado empleado, Date fechaingresoinst, String condicionlaboral, String tipocontrato, String puesto, String facultad, BigDecimal ingmensualbruto, String cese, Date fechacese) {
       this.id = id;
       this.empleado = empleado;
       this.fechaingresoinst = fechaingresoinst;
       this.condicionlaboral = condicionlaboral;
       this.tipocontrato = tipocontrato;
       this.puesto = puesto;
       this.facultad = facultad;
       this.ingmensualbruto = ingmensualbruto;
       this.cese = cese;
       this.fechacese = fechacese;
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
    public Date getFechaingresoinst() {
        return this.fechaingresoinst;
    }
    
    public void setFechaingresoinst(Date fechaingresoinst) {
        this.fechaingresoinst = fechaingresoinst;
    }
    public String getCondicionlaboral() {
        return this.condicionlaboral;
    }
    
    public void setCondicionlaboral(String condicionlaboral) {
        this.condicionlaboral = condicionlaboral;
    }
    public String getTipocontrato() {
        return this.tipocontrato;
    }
    
    public void setTipocontrato(String tipocontrato) {
        this.tipocontrato = tipocontrato;
    }
    public String getPuesto() {
        return this.puesto;
    }
    
    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
    public String getFacultad() {
        return this.facultad;
    }
    
    public void setFacultad(String facultad) {
        this.facultad = facultad;
    }
    public BigDecimal getIngmensualbruto() {
        return this.ingmensualbruto;
    }
    
    public void setIngmensualbruto(BigDecimal ingmensualbruto) {
        this.ingmensualbruto = ingmensualbruto;
    }
    public String getCese() {
        return this.cese;
    }
    
    public void setCese(String cese) {
        this.cese = cese;
    }
    public Date getFechacese() {
        return this.fechacese;
    }
    
    public void setFechacese(Date fechacese) {
        this.fechacese = fechacese;
    }




}

