/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.dao;

import java.util.List;

/**
 *
 * @author Eder-PC
 * @param <T>
 */
//Se declaran los metodos en las interfaces
public interface GenericDao<T> {

    List<T> findAll(); // métodos
    
    List<T> consultList(String consult);
    
    Object consultUnique(String consulta);
    
    int save(T t);
    
    T get (int id);
    
    int update(T t);

}
