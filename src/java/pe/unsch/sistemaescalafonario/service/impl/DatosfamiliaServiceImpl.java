/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.DatosfamiliaDao;
import pe.unsch.sistemaescalafonario.entity.Datosfamilia;
import pe.unsch.sistemaescalafonario.service.DatosfamiliaService;

/**
 *
 * @author José
 */

@Service
public class DatosfamiliaServiceImpl extends GenericServiceImpl<Datosfamilia> implements DatosfamiliaService {
    @Autowired
    DatosfamiliaDao datosfamiliaDao;
    
    @Override
    public Datosfamilia obtenerDatosFamiliaPorEmpleado(int idempleado) {
        return (Datosfamilia) datosfamiliaDao.consultUnique("from Datosfamilia d where empleado.id="+idempleado);
    }
    
}
