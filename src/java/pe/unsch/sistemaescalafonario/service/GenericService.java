/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import java.util.List;

/**
 *
 * @author Eder-PC
 * @param <T>
 */
public interface GenericService<T> {
    
    List<T> listarTodo();
    
    int guardar(T t);
}

