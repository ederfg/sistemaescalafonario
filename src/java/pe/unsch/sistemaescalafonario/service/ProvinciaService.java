/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import java.util.List;
import pe.unsch.sistemaescalafonario.entity.Departamento;
import pe.unsch.sistemaescalafonario.entity.Provincia;

/**
 *
 * @author José
 */
public interface ProvinciaService extends GenericService<Provincia> {
    
    //Listar provincias por departamento
    List<Provincia> listarProvxDep(Departamento departamento);
}
