/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.service;

import java.util.List;
import pe.unsch.sistemaescalafonario.entity.Datoshijos;

/**
 *
 * @author José
 */
public interface DatoshijosService extends GenericService<Datoshijos>{
     List<Datoshijos> listarDatosHijosPorFamilia (int idfamilia);
}