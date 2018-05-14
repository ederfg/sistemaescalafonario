/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import pe.unsch.sistemaescalafonario.entity.Administrativo;


/**
 *
 * @author Eder-PC
 */
public interface AdministrativoService extends GenericService<Administrativo>{
    
    Administrativo obtenerDatosAdministrativoPorIdEmpleado (int idempleado);
}
