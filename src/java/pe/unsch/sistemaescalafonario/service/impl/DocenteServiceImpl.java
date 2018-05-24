/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.DocenteDao;
import pe.unsch.sistemaescalafonario.entity.Docente;
import pe.unsch.sistemaescalafonario.service.DocenteService;

/**
 *
 * @author José
 */
@Service
public class DocenteServiceImpl extends GenericServiceImpl<Docente> implements DocenteService{
    
    @Autowired
    DocenteDao docenteDao;
    
    @Override
    public Docente obtenerDatosDocentePorIdEmpleado(int idempleado) {
        return (Docente) docenteDao.consultUnique("from Docente a where a.empleado.id="+idempleado);
    }
    
}
