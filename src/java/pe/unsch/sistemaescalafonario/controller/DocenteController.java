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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pe.unsch.sistemaescalafonario.entity.Datosacademicos;
import pe.unsch.sistemaescalafonario.entity.Datosfamilia;
import pe.unsch.sistemaescalafonario.entity.Datoshijos;
import pe.unsch.sistemaescalafonario.entity.Datoslaboral;
import pe.unsch.sistemaescalafonario.entity.Departamento;
import pe.unsch.sistemaescalafonario.entity.Distrito;
import pe.unsch.sistemaescalafonario.entity.Docente;
import pe.unsch.sistemaescalafonario.entity.Empleado;
import pe.unsch.sistemaescalafonario.entity.Escalafon;
import pe.unsch.sistemaescalafonario.entity.Gradoacademico;
import pe.unsch.sistemaescalafonario.entity.Provincia;
import pe.unsch.sistemaescalafonario.service.DatosacademicosService;
import pe.unsch.sistemaescalafonario.service.DatosfamiliaService;
import pe.unsch.sistemaescalafonario.service.DatoshijosService;
import pe.unsch.sistemaescalafonario.service.DatoslaboralService;
import pe.unsch.sistemaescalafonario.service.DepartamentoService;
import pe.unsch.sistemaescalafonario.service.DistritoService;
import pe.unsch.sistemaescalafonario.service.DocenteService;
import pe.unsch.sistemaescalafonario.service.EmpleadoService;
import pe.unsch.sistemaescalafonario.service.EscalafonService;
import pe.unsch.sistemaescalafonario.service.GradoacademicoService;
import pe.unsch.sistemaescalafonario.service.ProvinciaService;

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
    
    
    Gson gson = new Gson();
    
    public DocenteController() {
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
    DocenteService docenteService;
    @Autowired
    DatoslaboralService datoslaboralService;
    @Autowired
    DatosacademicosService datosacademicosService;
    @Autowired
    GradoacademicoService gradoacademicoService;
    @Autowired
    DatosfamiliaService datosfamiliaService;
    @Autowired
    DatoshijosService datoshijosService;
    
    @Autowired
    EscalafonService escalafonService;
    
     
    @RequestMapping(value = "listadodocentes",method = RequestMethod.GET)
    @ResponseBody
    public String listadoDoc(){
        List<Docente> listDoc = docenteService.listarTodo();
        String listadoJSON = gson.toJson(listDoc);
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
    @RequestMapping(value = "guardardocente",method = RequestMethod.POST)
    @ResponseBody
    public int guardarDocente(@RequestBody Docente docente){
        return docenteService.guardar(docente);
    }
    
    //Guardar datos laboral
    @RequestMapping(value = "guardardatoslaboral",method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatoLaboral(@RequestBody Datoslaboral datoslaboral){
        return datoslaboralService.guardar(datoslaboral);
    }
    
    //Guardar datos academicos
     @RequestMapping(value = "guardardatosacademicos",method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatoAcademico(@RequestBody Datosacademicos datosacademicos){
        return datosacademicosService.guardar(datosacademicos);
    }
    //Guardar grado academico
     @RequestMapping(value = "guardargradoacademico",method = RequestMethod.POST)
    @ResponseBody
    public int guardarGradoAcademico(@RequestBody Gradoacademico gradoacademico){
        return gradoacademicoService.guardar(gradoacademico);
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
    
    
    
     /*-----------------------------------------MODIFICAR DOCENTE-----------------------------------------------------------*/
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
    //Obtener Datos Docente
    @RequestMapping(value = "obtenerdatosdocente",method = RequestMethod.GET)
    @ResponseBody
    public Docente obtenerDatosDocente(@RequestParam int idempleado){
        return docenteService.obtenerDatosDocentePorIdEmpleado(idempleado);
    }
    //Actualizar Datos administrativo
    @RequestMapping(value = "actualizardatosdocente",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosDocente(@RequestBody Docente docente){
        return docenteService.update(docente);
    }
     //Obtener Datos Laboral
    @RequestMapping(value = "obtenerdatoslaboral", method = RequestMethod.GET)
    @ResponseBody
    public Datoslaboral obtenerDatosLaboral(@RequestParam int idempleado) {
        return datoslaboralService.obtenerDatosLaboralPorIdEmpleado(idempleado);
    }

    //Actualizar Datos Laboral
    @RequestMapping(value = "actualizardatoslaboral", method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosLaboral(@RequestBody Datoslaboral datoslaboral) {
        return datoslaboralService.update(datoslaboral);
    }
    //Obtener Datos academicos  
    @RequestMapping(value = "obtenerdatosacademicos",method = RequestMethod.GET)
    @ResponseBody
    public List<Datosacademicos> obtenerDatosAcademicos(@RequestParam int idempleado){
        return datosacademicosService.listarDatosAcademicosPorEmpleado(idempleado);
    }
    //Actualizar Datos Academicos
    @RequestMapping(value = "actualizardatosacademicos",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosAcademicos(@RequestBody Datosacademicos datosacademicos){
        return datosacademicosService.update(datosacademicos);
    }
    //Obtener Grado academicos  
    @RequestMapping(value = "obtenergradosacademicos",method = RequestMethod.GET)
    @ResponseBody
    public List<Gradoacademico> obtenerGradosAcademicos(@RequestParam int idempleado){
        return gradoacademicoService.listarGradoAcademicoPorEmpleado(idempleado);
    }
    //Actualizar Grado Academico
    @RequestMapping(value = "actualizargradoacademico",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarGradosAcademicos(@RequestBody Gradoacademico gradoacademico){
        return gradoacademicoService.update(gradoacademico);
    }
    //Obtener Datos Familia
    @RequestMapping(value = "obtenerdatosfamilia",method = RequestMethod.GET)
    @ResponseBody
    public Datosfamilia obtenerDatosFamilia(@RequestParam int idempleado){
        return datosfamiliaService.obtenerDatosFamiliaPorEmpleado(idempleado);
    }
    //Actualizar Datos Familia
    @RequestMapping(value = "actualizardatosfamilia",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosFamilia(@RequestBody Datosfamilia datosfamilia){
        return datosfamiliaService.update(datosfamilia);
    }
    
    //Obtener Datos Hijo por idfamiila
    @RequestMapping(value = "obtenerdatoshijos",method = RequestMethod.GET)
    @ResponseBody
    public List<Datoshijos> obtenerDatosHijosPorFamilia(@RequestParam int idfamilia){
        return datoshijosService.listarDatosHijosPorFamilia(idfamilia);
    }
    //Actualizar Datos Hijo por Familia
    @RequestMapping(value = "actualizardatoshijos",method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosHijosPorFamilia(@RequestBody Datoshijos datoshijos){
        return datoshijosService.update(datoshijos);
    }
        
    
    /*-------------------------------ELIMINAR--------------------------*/
    @RequestMapping(value = "eliminardocente", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarDocente(@RequestParam int iddocente) {
        return docenteService.drop(iddocente);
    }

    @RequestMapping(value = "eliminardatoslaboral", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarDatosLaboral(@RequestParam int iddatolaboral) {
        return datoslaboralService.drop(iddatolaboral);
    }

    @RequestMapping(value = "eliminardatoacademico", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarDatoAcademico(@RequestParam int iddatoacademico) {
        return datosacademicosService.drop(iddatoacademico);
    }

    @RequestMapping(value = "eliminargradoacademico", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarGradosAcademicos(@RequestParam int idgradoacademico) {
        return gradoacademicoService.drop(idgradoacademico);
    }

    @RequestMapping(value = "eliminarhijo", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarHijos(@RequestParam int idhijo) {
        return datoshijosService.drop(idhijo);
    }

    @RequestMapping(value = "eliminarfamilia", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarFamilia(@RequestParam int idfamilia) {
        return datosfamiliaService.drop(idfamilia);
    }

    @RequestMapping(value = "eliminarempleado", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarEmpleado(@RequestParam int idempleado) {
        return empleadoService.drop(idempleado);
    }

    /*------------------------------*/
    
     /*--------------REGISTRO ESCALAFON DOC-------------*/
    @RequestMapping(value = "agregarescalafon", method = RequestMethod.POST)
    @ResponseBody
    public int agregarEscalafon(@RequestBody Escalafon escalafon) {
        return escalafonService.guardar(escalafon);
    }
    
    /*Listado escalafon doc*/
    @RequestMapping(value = "listarescalafondoc", method = RequestMethod.GET)
    @ResponseBody
    public List<Escalafon> listarEscalafonDoc(@RequestParam int idempleado) {
        return escalafonService.listarEscalafonPorEmpleado(idempleado);
    }
    
    /*--------------MODIFICAR ESCALAFON Doc-------------*/
    @RequestMapping(value = "modificarescalafon", method = RequestMethod.POST)
    @ResponseBody
    public int modificarEscalafon(@RequestBody Escalafon escalafon) {
        return escalafonService.update(escalafon);
    }
    /*--------------ELIMINAR ESCALAFON Doc-------------*/
    @RequestMapping(value = "eliminarescalafon", method = RequestMethod.POST)
    @ResponseBody
    public int eliminarEscalafon(@RequestBody Escalafon escalafon) {
        return escalafonService.drop(escalafon.getId());
    }
    
    //listar empleado   
     //Guardar doc
    @RequestMapping(value = "listempleado",method = RequestMethod.GET)
    @ResponseBody
    public List<Empleado> listarEmpleado(){
        return empleadoService.listarTodo();
    }
    
}
