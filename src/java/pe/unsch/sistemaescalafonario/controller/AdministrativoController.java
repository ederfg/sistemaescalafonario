/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pe.unsch.sistemaescalafonario.entity.Administrativo;
import pe.unsch.sistemaescalafonario.entity.Datosacademicos;
import pe.unsch.sistemaescalafonario.entity.Datosfamilia;
import pe.unsch.sistemaescalafonario.entity.Datoshijos;
import pe.unsch.sistemaescalafonario.entity.Datoslaboral;
import pe.unsch.sistemaescalafonario.entity.Departamento;
import pe.unsch.sistemaescalafonario.entity.Distrito;
import pe.unsch.sistemaescalafonario.entity.Empleado;
import pe.unsch.sistemaescalafonario.entity.Provincia;
import pe.unsch.sistemaescalafonario.service.AdministrativoService;
import pe.unsch.sistemaescalafonario.service.DatosacademicosService;
import pe.unsch.sistemaescalafonario.service.DatosfamiliaService;
import pe.unsch.sistemaescalafonario.service.DatoshijosService;
import pe.unsch.sistemaescalafonario.service.DatoslaboralService;
import pe.unsch.sistemaescalafonario.service.DepartamentoService;
import pe.unsch.sistemaescalafonario.service.DistritoService;
import pe.unsch.sistemaescalafonario.service.EmpleadoService;
import pe.unsch.sistemaescalafonario.service.ProvinciaService;

/**
 *
 * @author Eder-Pc
 */
@Controller
@RequestMapping("administrativo")
public class AdministrativoController {
    
    
    
    //ADMINISTRATIVO MANTENIMIENTO    
    @RequestMapping(value = "mantenimientoadministrativo",method = RequestMethod.GET)
    public String mantenimientoadministrativo(){
        return "administrativo/mantenimiento/mantenimientoadministrativo";
    }    
    
    @RequestMapping(value = "mantenimientoadministrativo/registro", method =RequestMethod.GET)
    public String mantenimientoadministrativo_registro(){
        return "administrativo/mantenimiento/registroadministrativo";          
    }        
    
    @RequestMapping(value = "mantenimientoadministrativo/modificar", method =RequestMethod.GET)
    public String mantenimientoadministrativo_modificar(){
        return "administrativo/mantenimiento/modificaradministrativo";          
    }
    @RequestMapping(value = "mantenimientoadministrativo/ver", method =RequestMethod.GET)
    public String mantenimientoadministrativo_ver(){
        return "administrativo/mantenimiento/veradministrativo";          
    }
    
    //ADMINISTRATIVO MANTENIMIENTO ESCALAFON
    
    @RequestMapping(value = "escalafonadministrativo", method =RequestMethod.GET)
    public String escalafonadministrativo(){
        return "administrativo/mantenimientoescalafon/escalafonadministrativo";
    }
    @RequestMapping(value = "mantenimientoescalafon/agregar", method =RequestMethod.GET)
    public String mantenimientoescalafon_agregar(){
        return "administrativo/mantenimientoescalafon/agregarescalafonadministrativo";
    }
    @RequestMapping(value = "mantenimientoescalafon/ver", method =RequestMethod.GET)
    public String mantenimientoescalafon_ver(){
        return "administrativo/mantenimientoescalafon/verescalafonadministrativo";
    }
    
    
    
    @RequestMapping(value = "contratosadministrativo",method = RequestMethod.GET)
    public String contratosadministrativo(){
        return "administrativo/contratosadministrativo";
    }
    
    
    @RequestMapping(value = "addendasadministrativo",method = RequestMethod.GET)
    public String addendasadministrativo(ModelMap map){
        //map.addAttribute("listado", administrativoService.listarTodo());
        return "administrativo/addendasadministrativo";
    }

    
    Gson gson = new Gson();
    
    public AdministrativoController() {
        gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
    }
    
    @Autowired
    DepartamentoService departamentoService;
    @Autowired
    ProvinciaService provinciaService;
    @Autowired
    DistritoService distritoService;
    
    @Autowired
    EmpleadoService empleadoService;
    @Autowired
    AdministrativoService administrativoService;
    @Autowired
    DatoslaboralService datoslaboralService;
    @Autowired
    DatosacademicosService datosacademicosService;
    @Autowired
    DatosfamiliaService datosfamiliaService;
    @Autowired
    DatoshijosService datoshijosService;
    
    
    
    @RequestMapping(value = "listadoadministrativos",method = RequestMethod.GET)
    @ResponseBody
    public String listadoAdm(){
        List<Administrativo> listAdm = administrativoService.listarTodo();
        String listadoJSON = gson.toJson(listAdm);
        return listadoJSON;
    }
    
    //Listado de departamentos
    @RequestMapping(value = "listadodepartamento",method = RequestMethod.GET)
    @ResponseBody
    public String listadoDepartamento(){
        List<Departamento> listDepartamento = departamentoService.listarTodo();
        String listadoJSON = gson.toJson(listDepartamento);
        return listadoJSON;
    }
    // Listado de provincias
    @RequestMapping(value = "listadoprovincia",method = RequestMethod.POST)
    @ResponseBody
    public String listadoProvincia(@RequestBody Departamento departamento){
        List<Provincia> listProvincia = provinciaService.listarProvxDep(departamento);
        String listadoJSON = gson.toJson(listProvincia);
        return listadoJSON;
    }
    //Listado de distritos
    @RequestMapping(value = "listadodistrito",method = RequestMethod.POST)
    @ResponseBody
    public String listadoDistrito(@RequestBody Provincia provincia){
        List<Distrito> listDistrito = distritoService.listarDistxProv(provincia);
        String listadoJSON = gson.toJson(listDistrito);
        return listadoJSON;
    }
    
    //Guardar Empleado
    @RequestMapping(value = "guardarempleado",method = RequestMethod.POST)
    @ResponseBody
    public String guardarEmpleado(@RequestBody Empleado empleado){
        int rest = empleadoService.guardar(empleado);
        if (rest ==1) {
            Empleado emp = empleado;
            String respuesta = gson.toJson(emp);
            return respuesta;
        }else{
            return "error"; 
        }
        //return rest;
    }
    
    //Guardar adm
    @RequestMapping(value = "guardaradministrativo",method = RequestMethod.POST)
    @ResponseBody
    public int guardarAdministrativo(@RequestBody Administrativo administrativo){
        return administrativoService.guardar(administrativo);
    }
    
    //Guardar adm
    @RequestMapping(value = "guardardatoslaboral",method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatoLaboral(@RequestBody Datoslaboral datoslaboral){
        return datoslaboralService.guardar(datoslaboral);
    }
    
    //Guardar datos academicos
     @RequestMapping(value = "guardardatosacademicos",method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatoLaboral(@RequestBody Datosacademicos datosacademicos){
        return datosacademicosService.guardar(datosacademicos);
    }
    
    //Guardar datos familia
    @RequestMapping(value = "guardardatosfamilia",method = RequestMethod.POST)
    @ResponseBody
    public String guardarDatoFamilia(@RequestBody Datosfamilia datosfamilia){
         int rest = datosfamiliaService.guardar(datosfamilia);
        if (rest ==1) {
            Datosfamilia df = datosfamilia;
            String respuesta = gson.toJson(df);
            return respuesta;
        }else{
            return "error"; 
        }
    }
    //Guardar datos hijo
    @RequestMapping(value = "guardardatoshijo",method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatoHijo(@RequestBody Datoshijos datoshijos){
        return datoshijosService.guardar(datoshijos);
    }
    
    
    
    /*-----------------------------------------MODIFICAR ADMINISTRATIVO-----------------------------------------------------------*/
    //Obtener Datos personales
    @RequestMapping(value = "obtenerdatospersonales",method = RequestMethod.GET)
    @ResponseBody
    public Empleado obtenerDatosPersonales(@RequestParam int idempleado){
        return empleadoService.get(idempleado);
    }
    //Actualizar Datos personales
    @RequestMapping(value = "actualizardatospersonales",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosPersonales(@RequestBody Empleado empleado){
        return empleadoService.update(empleado);
    }
    //Obtener Datos Administrativo
    @RequestMapping(value = "obtenerdatosadministrativo",method = RequestMethod.GET)
    @ResponseBody
    public Administrativo obtenerDatosAdministrativo(@RequestParam int idempleado){
        return administrativoService.obtenerDatosAdministrativoPorIdEmpleado(idempleado);
    }
    //Actualizar Datos administrativo
    @RequestMapping(value = "actualizardatosadministrativo",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosAdministrativo(@RequestBody Administrativo administrativo){
        return administrativoService.update(administrativo);
    }
    //Obtener Datos Laboral
    @RequestMapping(value = "obtenerdatoslaboral",method = RequestMethod.GET)
    @ResponseBody
    public Datoslaboral obtenerDatosLaboral(@RequestParam int idempleado){
        return datoslaboralService.obtenerDatosLaboralPorIdEmpleado(idempleado);
    }
    //Actualizar Datos Laboral
    @RequestMapping(value = "actualizardatoslaboral",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosLaboral(@RequestBody Datoslaboral datoslaboral){
        return datoslaboralService.update(datoslaboral);
    }
    
    
    
    
    
    //listar empleado   
     //Guardar adm
    @RequestMapping(value = "listempleado",method = RequestMethod.GET)
    @ResponseBody
    public List<Empleado> listarEmpleado(){
        return empleadoService.listarTodo();
    }
    
}
