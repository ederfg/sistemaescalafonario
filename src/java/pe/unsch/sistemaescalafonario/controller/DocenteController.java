/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Eder-Pc
 */
@Controller
@RequestMapping("docente")
public class DocenteController {
    
    //DOCENTE MANTENIMIENTO
    @RequestMapping(value = "mantenimientodocente", method =RequestMethod.GET)
    public String mantenimientodocente(){
        return "docente/mantenimiento/mantenimientodocente";
    }
    @RequestMapping(value = "mantenimientodocente/registro", method =RequestMethod.GET)
    public String mantenimientodocente_registro(){
        return "docente/mantenimiento/registrodocente";
    }
    @RequestMapping(value = "mantenimientodocente/modificar", method =RequestMethod.GET)
    public String mantenimientodocente_modificar(){
        return "docente/mantenimiento/modificardocente";
    }
    @RequestMapping(value = "mantenimientodocente/ver", method =RequestMethod.GET)
    public String mantenimientodocente_ver(){
        return "docente/mantenimiento/verdocente";
    }
    
    //DOCENTE MANTENIMIENTO ESCALFON
    
    @RequestMapping(value = "escalafondocente", method =RequestMethod.GET)
    public String escalafondocente(){
        return "docente/mantenimientoescalafon/escalafondocente";
    }
    @RequestMapping(value = "mantenimientoescalafon/agregar", method =RequestMethod.GET)
    public String mantenimientoescalafon_agregar(){
        return "docente/mantenimientoescalafon/agregarescalafondocente";
    }
    @RequestMapping(value = "mantenimientoescalafon/ver", method =RequestMethod.GET)
    public String mantenimientoescalafon_ver(){
        return "docente/mantenimientoescalafon/verescalafondocente";
    }
    
    
    //
    @RequestMapping(value = "contratosdocente", method =RequestMethod.GET)
    public String contratosdocente(){
        return "docente/contratosdocente";
    }
    @RequestMapping(value = "addendasdocente", method =RequestMethod.GET)
    public String addendasdocente(){
        return "docente/addendasdocente";
    }
}
