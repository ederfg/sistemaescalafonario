package pe.unsch.sistemaescalafonario.entity;
// Generated 21-mar-2018 18:08:39 by Hibernate Tools 4.3.1



/**
 * Administrativo generated by hbm2java
 */
public class Administrativo  implements java.io.Serializable {


     private int id;
     private Empleado empleado;
     private int codigoadministrativo;
     private String categoriaadministrativo;
     private String nivelremunerativoadm;

    public Administrativo() {
    }

	
    public Administrativo(int id, Empleado empleado, int codigoadministrativo) {
        this.id = id;
        this.empleado = empleado;
        this.codigoadministrativo = codigoadministrativo;
    }
    public Administrativo(int id, Empleado empleado, int codigoadministrativo, String categoriaadministrativo, String nivelremunerativoadm) {
       this.id = id;
       this.empleado = empleado;
       this.codigoadministrativo = codigoadministrativo;
       this.categoriaadministrativo = categoriaadministrativo;
       this.nivelremunerativoadm = nivelremunerativoadm;
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
    public int getCodigoadministrativo() {
        return this.codigoadministrativo;
    }
    
    public void setCodigoadministrativo(int codigoadministrativo) {
        this.codigoadministrativo = codigoadministrativo;
    }
    public String getCategoriaadministrativo() {
        return this.categoriaadministrativo;
    }
    
    public void setCategoriaadministrativo(String categoriaadministrativo) {
        this.categoriaadministrativo = categoriaadministrativo;
    }
    public String getNivelremunerativoadm() {
        return this.nivelremunerativoadm;
    }
    
    public void setNivelremunerativoadm(String nivelremunerativoadm) {
        this.nivelremunerativoadm = nivelremunerativoadm;
    }




}

