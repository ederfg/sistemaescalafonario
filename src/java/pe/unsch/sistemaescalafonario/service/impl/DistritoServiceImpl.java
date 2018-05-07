/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.DistritoDao;
import pe.unsch.sistemaescalafonario.entity.Distrito;
import pe.unsch.sistemaescalafonario.entity.Provincia;
import pe.unsch.sistemaescalafonario.service.DistritoService;

/**
 *
 * @author Eder-PC
 */
@Service
public class DistritoServiceImpl extends GenericServiceImpl<Distrito> implements DistritoService{
    @Autowired
    DistritoDao distritoDao;
    
    
    @Override
    public List<Distrito> listarDistxProv(Provincia provincia) {
         return distritoDao.consultList("from Distrito where idprovincia=" + provincia.getId() + "");
    }
    
}
