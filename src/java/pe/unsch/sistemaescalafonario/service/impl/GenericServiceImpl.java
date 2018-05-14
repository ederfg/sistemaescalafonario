/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.unsch.sistemaescalafonario.dao.GenericDao;
import pe.unsch.sistemaescalafonario.service.GenericService;

/**
 *
 * @author Eder-PC
 * @param <T>
 */
@Service
public abstract class GenericServiceImpl<T> implements GenericService<T>{

    @Autowired
    GenericDao<T> genericDao;
    
    @Override
    public List<T> listarTodo() {
        return genericDao.findAll();
    }
    
    @Override
    public int guardar(T t) {
        return genericDao.save(t);
    }

    @Override
    public T get(int id) {
        return genericDao.get(id);
    }

    @Override
    public int update(T t) {
        return genericDao.update(t);
    }
}
