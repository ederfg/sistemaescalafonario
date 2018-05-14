/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.AdministrativoDao;
import pe.unsch.sistemaescalafonario.entity.Administrativo;
import pe.unsch.sistemaescalafonario.service.AdministrativoService;

/**
 *
 * @author Eder-PC
 */
@Service
public class AdministrativoServiceImpl extends GenericServiceImpl<Administrativo> implements AdministrativoService{

    @Autowired
    AdministrativoDao administrativoDao;
    
    @Override
    public Administrativo obtenerDatosAdministrativoPorIdEmpleado(int idempleado) {
        return (Administrativo) administrativoDao.consultUnique("from Administrativo a where a.empleado.id="+idempleado);
    }
    
}
