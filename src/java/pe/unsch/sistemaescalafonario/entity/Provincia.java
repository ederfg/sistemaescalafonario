package pe.unsch.sistemaescalafonario.entity;
// Generated 21-mar-2018 18:08:39 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Provincia generated by hbm2java
 */
public class Provincia  implements java.io.Serializable {


     private int id;
     private Departamento departamento;
     private String nombreprovincia;
     

    public Provincia() {
    }

	
    public Provincia(int id, Departamento departamento, String nombreprovincia) {
        this.id = id;
        this.departamento = departamento;
        this.nombreprovincia = nombreprovincia;
    }
     
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Departamento getDepartamento() {
        return this.departamento;
    }
    
    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }
    public String getNombreprovincia() {
        return this.nombreprovincia;
    }
    
    public void setNombreprovincia(String nombreprovincia) {
        this.nombreprovincia = nombreprovincia;
    }


}

