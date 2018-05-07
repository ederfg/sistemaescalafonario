/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.ProvinciaDao;
import pe.unsch.sistemaescalafonario.entity.Departamento;
import pe.unsch.sistemaescalafonario.entity.Provincia;
import pe.unsch.sistemaescalafonario.service.ProvinciaService;

/**
 *
 * @author José
 */
@Service
public class ProvinciaServiceImpl extends GenericServiceImpl<Provincia> implements ProvinciaService {

    @Autowired
    ProvinciaDao provinciaDao;

    @Override
    public List<Provincia> listarProvxDep(Departamento departamento) {
        return provinciaDao.consultList("from Provincia where iddepartamento=" + departamento.getId() + "");
    }

}
