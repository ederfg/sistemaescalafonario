/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Eder-Pc
 */
@Controller
@RequestMapping("administracion")
public class AdministracionController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String inicio(){
        return "index";
    }
    
    @RequestMapping(value="login",method = RequestMethod.GET)
    public String login(){
        return "login"; //nombre del jsp
    }
    
    //Partes que se repiten de la vista principal
    @RequestMapping(value = "header",method = RequestMethod.GET)
    public String header(){
        return "template/header";
    }
    @RequestMapping(value = "menu",method = RequestMethod.GET)
    public String menu(){
        return "template/menu";
    }
    @RequestMapping(value = "footer",method = RequestMethod.GET)
    public String footer(){
        return "template/footer";
    }
    
    //VISTAS
    @RequestMapping(value = "vistainicial",method = RequestMethod.GET)
    public String vistainicial(ModelMap map){
        map.addAttribute("listadoA","hola");
        return "vistainicial";
    }
    
    
    
    
}
