/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.DatosacademicosDao;
import pe.unsch.sistemaescalafonario.entity.Datosacademicos;
import pe.unsch.sistemaescalafonario.service.DatosacademicosService;

/**
 *
 * @author José
 */
@Service
public class DatosacademicosServiceImpl extends GenericServiceImpl<Datosacademicos> implements DatosacademicosService{
    @Autowired
    DatosacademicosDao datosacademicosDao;

    @Override
    public List<Datosacademicos> listarDatosAcademicosPorEmpleado(int idempleado) {
        return datosacademicosDao.consultList("from Datosacademicos d where d.empleado.id="+idempleado);
    }
    
}
