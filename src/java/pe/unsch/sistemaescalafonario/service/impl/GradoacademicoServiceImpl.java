/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.GradoacademicoDao;
import pe.unsch.sistemaescalafonario.entity.Gradoacademico;
import pe.unsch.sistemaescalafonario.service.GradoacademicoService;

/**
 *
 * @author José
 */
@Service
public class GradoacademicoServiceImpl extends GenericServiceImpl<Gradoacademico> implements GradoacademicoService{
    
    @Autowired
    GradoacademicoDao gradoacademicoDao;


    @Override
    public List<Gradoacademico> listarGradoAcademicoPorEmpleado(int idempleado) {
        return gradoacademicoDao.consultList("from Gradoacademico g where g.empleado.id="+idempleado);
    }
}
