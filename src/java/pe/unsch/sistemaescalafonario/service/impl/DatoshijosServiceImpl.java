/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.DatoshijosDao;
import pe.unsch.sistemaescalafonario.entity.Datoshijos;
import pe.unsch.sistemaescalafonario.service.DatoshijosService;

/**
 *
 * @author José
 */

@Service
public class DatoshijosServiceImpl extends GenericServiceImpl<Datoshijos> implements DatoshijosService{
    @Autowired
    DatoshijosDao datoshijosDao;
    
    @Override
    public List<Datoshijos> listarDatosHijosPorFamilia(int idfamilia) {
        return datoshijosDao.consultList("from Datoshijos dh where dh.datosfamilia.id="+idfamilia);
    }
    
}
