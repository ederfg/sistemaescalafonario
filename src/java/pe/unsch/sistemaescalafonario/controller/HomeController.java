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
 * @author Eder-PC
 */
@Controller
@RequestMapping("home")
public class HomeController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String inicio(){
        return "redireccionando";
    }
    
    @RequestMapping(value="vista",method = RequestMethod.GET)
    public String vista(){
        return "vista"; //nombre del jsp
    }
    
        
     
    @RequestMapping(value="condition",method = RequestMethod.GET)
    public String condition(){
        return "condition"; //nombre del jsp
    }
    @RequestMapping(value="register",method = RequestMethod.GET)
    public String register(){
        return "register"; //nombre del jsp
    }
    @RequestMapping(value="escalafon",method = RequestMethod.GET)
    public String escalafon(){
        return "escalafon"; //nombre del jsp
    }
    @RequestMapping(value="escalafonA",method = RequestMethod.GET)
    public String escalafonA(){
        return "escalafonA"; //nombre del jsp
    }
    @RequestMapping(value="registerAdm",method = RequestMethod.GET)
    public String registerAdm(){
        return "registerAdm"; //nombre del jsp
    }
    @RequestMapping(value="registerEscalafonDoc",method = RequestMethod.GET)
    public String registerEscalafonDoc(){
        return "registerEscalafonDoc"; //nombre del jsp
    }
    @RequestMapping(value="registerEscalafonAdm",method = RequestMethod.GET)
    public String registerEscalafonAdm(){
        return "registerEscalafonAdm"; //nombre del jsp
    }
}
