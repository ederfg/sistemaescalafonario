/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import java.util.List;
import pe.unsch.sistemaescalafonario.entity.Gradoacademico;

/**
 *
 * @author José
 */
public interface GradoacademicoService extends GenericService<Gradoacademico>{
    List<Gradoacademico> listarGradoAcademicoPorEmpleado (int idempleado);
}
