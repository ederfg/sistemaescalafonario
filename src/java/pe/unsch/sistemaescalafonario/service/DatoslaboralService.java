/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import pe.unsch.sistemaescalafonario.entity.Datoslaboral;

/**
 *
 * @author José
 */
public interface DatoslaboralService extends GenericService<Datoslaboral> {

    Datoslaboral obtenerDatosLaboralPorIdEmpleado(int idempleado);
}
