/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import java.util.List;
import pe.unsch.sistemaescalafonario.entity.Datosacademicos;

/**
 *
 * @author José
 */
public interface DatosacademicosService extends GenericService<Datosacademicos>{
    
    List<Datosacademicos> listarDatosAcademicosPorEmpleado (int idempleado);
}
