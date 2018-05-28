/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import pe.unsch.sistemaescalafonario.entity.Datosfamilia;

/**
 *
 * @author José
 */
public interface DatosfamiliaService extends GenericService<Datosfamilia>{
     Datosfamilia obtenerDatosFamiliaPorEmpleado (int idempleado);
}
