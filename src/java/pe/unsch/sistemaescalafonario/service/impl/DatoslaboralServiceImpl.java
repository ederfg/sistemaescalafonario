/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.DatoslaboralDao;
import pe.unsch.sistemaescalafonario.entity.Datoslaboral;
import pe.unsch.sistemaescalafonario.service.DatoslaboralService;

/**
 *
 * @author José
 */

@Service
public class DatoslaboralServiceImpl extends GenericServiceImpl<Datoslaboral> implements DatoslaboralService {
    
    @Autowired
    DatoslaboralDao datoslaboralDao;

    @Override
    public Datoslaboral obtenerDatosLaboralPorIdEmpleado(int idempleado) {
        return (Datoslaboral) datoslaboralDao.consultUnique("from Datoslaboral dl where dl.empleado.id="+idempleado);
    }
    
}
