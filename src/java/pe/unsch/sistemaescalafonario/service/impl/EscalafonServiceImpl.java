/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.EscalafonDao;
import pe.unsch.sistemaescalafonario.entity.Escalafon;
import pe.unsch.sistemaescalafonario.service.EscalafonService;

/**
 *
 * @author José
 */
@Service
public class EscalafonServiceImpl extends GenericServiceImpl<Escalafon> implements EscalafonService{
    @Autowired
    EscalafonDao escalafonDao;

    @Override
    public List<Escalafon> listarEscalafonPorEmpleado(int idempleado) {
        return escalafonDao.consultList("from Escalafon e where e.empleado.id="+idempleado);
    }
    
    
}
