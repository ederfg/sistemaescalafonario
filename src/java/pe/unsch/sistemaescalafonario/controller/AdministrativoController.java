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
import pe.unsch.sistemaescalafonario.entity.Gradoacademico;
import pe.unsch.sistemaescalafonario.entity.Provincia;
import pe.unsch.sistemaescalafonario.service.AdministrativoService;
import pe.unsch.sistemaescalafonario.service.DatosacademicosService;
import pe.unsch.sistemaescalafonario.service.DatosfamiliaService;
import pe.unsch.sistemaescalafonario.service.DatoshijosService;
import pe.unsch.sistemaescalafonario.service.DatoslaboralService;
import pe.unsch.sistemaescalafonario.service.DepartamentoService;
import pe.unsch.sistemaescalafonario.service.DistritoService;
import pe.unsch.sistemaescalafonario.service.EmpleadoService;
import pe.unsch.sistemaescalafonario.service.GradoacademicoService;
import pe.unsch.sistemaescalafonario.service.ProvinciaService;

/**
 *
 * @author Eder-Pc
 */
@Controller
@RequestMapping("administrativo")
public class AdministrativoController {

    //ADMINISTRATIVO MANTENIMIENTO    
    @RequestMapping(value = "mantenimientoadministrativo", method = RequestMethod.GET)
    public String mantenimientoadministrativo() {
        return "administrativo/mantenimiento/mantenimientoadministrativo";
    }

    @RequestMapping(value = "mantenimientoadministrativo/registro", method = RequestMethod.GET)
    public String mantenimientoadministrativo_registro() {
        return "administrativo/mantenimiento/registroadministrativo";
    }

    @RequestMapping(value = "mantenimientoadministrativo/modificar", method = RequestMethod.GET)
    public String mantenimientoadministrativo_modificar() {
        return "administrativo/mantenimiento/modificaradministrativo";
    }

    @RequestMapping(value = "mantenimientoadministrativo/ver", method = RequestMethod.GET)
    public String mantenimientoadministrativo_ver() {
        return "administrativo/mantenimiento/veradministrativo";
    }

    //ADMINISTRATIVO MANTENIMIENTO ESCALAFON
    @RequestMapping(value = "escalafonadministrativo", method = RequestMethod.GET)
    public String escalafonadministrativo() {
        return "administrativo/mantenimientoescalafon/escalafonadministrativo";
    }

    @RequestMapping(value = "mantenimientoescalafon/agregar", method = RequestMethod.GET)
    public String mantenimientoescalafon_agregar() {
        return "administrativo/mantenimientoescalafon/agregarescalafonadministrativo";
    }

    @RequestMapping(value = "mantenimientoescalafon/ver", method = RequestMethod.GET)
    public String mantenimientoescalafon_ver() {
        return "administrativo/mantenimientoescalafon/verescalafonadministrativo";
    }

    @RequestMapping(value = "contratosadministrativo", method = RequestMethod.GET)
    public String contratosadministrativo() {
        return "administrativo/contratosadministrativo";
    }

    @RequestMapping(value = "addendasadministrativo", method = RequestMethod.GET)
    public String addendasadministrativo(ModelMap map) {
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
    GradoacademicoService gradoacademicoService;
    @Autowired
    DatosfamiliaService datosfamiliaService;
    @Autowired
    DatoshijosService datoshijosService;

    @RequestMapping(value = "listadoadministrativos", method = RequestMethod.GET)
    @ResponseBody
    public String listadoAdm() {
        List<Administrativo> listAdm = administrativoService.listarTodo();
        String listadoJSON = gson.toJson(listAdm);
        return listadoJSON;
    }

    //Listado de departamentos
    @RequestMapping(value = "listadodepartamento", method = RequestMethod.GET)
    @ResponseBody
    public String listadoDepartamento() {
        List<Departamento> listDepartamento = departamentoService.listarTodo();
        String listadoJSON = gson.toJson(listDepartamento);
        return listadoJSON;
    }

    // Listado de provincias
    @RequestMapping(value = "listadoprovincia", method = RequestMethod.POST)
    @ResponseBody
    public String listadoProvincia(@RequestBody Departamento departamento) {
        List<Provincia> listProvincia = provinciaService.listarProvxDep(departamento);
        String listadoJSON = gson.toJson(listProvincia);
        return listadoJSON;
    }

    //Listado de distritos
    @RequestMapping(value = "listadodistrito", method = RequestMethod.POST)
    @ResponseBody
    public String listadoDistrito(@RequestBody Provincia provincia) {
        List<Distrito> listDistrito = distritoService.listarDistxProv(provincia);
        String listadoJSON = gson.toJson(listDistrito);
        return listadoJSON;
    }

    //Guardar Empleado
    @RequestMapping(value = "guardarempleado", method = RequestMethod.POST)
    @ResponseBody
    public String guardarEmpleado(@RequestBody Empleado empleado) {
        int rest = empleadoService.guardar(empleado);
        if (rest == 1) {
            Empleado emp = empleado;
            String respuesta = gson.toJson(emp);
            return respuesta;
        } else {
            return "error";
        }
        //return rest;
    }

    //Guardar adm
    @RequestMapping(value = "guardaradministrativo", method = RequestMethod.POST)
    @ResponseBody
    public int guardarAdministrativo(@RequestBody Administrativo administrativo) {
        return administrativoService.guardar(administrativo);
    }

    //Guardar adm
    @RequestMapping(value = "guardardatoslaboral", method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatoLaboral(@RequestBody Datoslaboral datoslaboral) {
        return datoslaboralService.guardar(datoslaboral);
    }

    //Guardar datos academicos
    @RequestMapping(value = "guardardatosacademicos", method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatosLaboral(@RequestBody Datosacademicos datosacademicos) {
        return datosacademicosService.guardar(datosacademicos);
    }

    //Guardar grado academico
    @RequestMapping(value = "guardargradosacademicos", method = RequestMethod.POST)
    @ResponseBody
    public int guardarGradoAcademico(@RequestBody Gradoacademico gradoacademico) {
        return gradoacademicoService.guardar(gradoacademico);
    }

    //Guardar datos familia
    @RequestMapping(value = "guardardatosfamilia", method = RequestMethod.POST)
    @ResponseBody
    public String guardarDatoFamilia(@RequestBody Datosfamilia datosfamilia) {
        int rest = datosfamiliaService.guardar(datosfamilia);
        if (rest == 1) {
            Datosfamilia df = datosfamilia;
            String respuesta = gson.toJson(df);
            return respuesta;
        } else {
            return "error";
        }
    }

    //Guardar datos hijo
    @RequestMapping(value = "guardardatoshijo", method = RequestMethod.POST)
    @ResponseBody
    public int guardarDatoHijo(@RequestBody Datoshijos datoshijos) {
        return datoshijosService.guardar(datoshijos);
    }

    /*-----------------------------------------MODIFICAR ADMINISTRATIVO-----------------------------------------------------------*/
    //Obtener Datos personales
    @RequestMapping(value = "obtenerdatospersonales", method = RequestMethod.GET)
    @ResponseBody
    public Empleado obtenerDatosPersonales(@RequestParam int idempleado) {
        return empleadoService.get(idempleado);
    }

    //Actualizar Datos personales
    @RequestMapping(value = "actualizardatospersonales", method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosPersonales(@RequestBody Empleado empleado) {
        return empleadoService.update(empleado);
    }

    //Obtener Datos Administrativo
    @RequestMapping(value = "obtenerdatosadministrativo", method = RequestMethod.GET)
    @ResponseBody
    public Administrativo obtenerDatosAdministrativo(@RequestParam int idempleado) {
        return administrativoService.obtenerDatosAdministrativoPorIdEmpleado(idempleado);
    }

    //Actualizar Datos administrativo
    @RequestMapping(value = "actualizardatosadministrativo", method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosAdministrativo(@RequestBody Administrativo administrativo) {
        return administrativoService.update(administrativo);
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
    @RequestMapping(value = "obtenerdatosacademicos", method = RequestMethod.GET)
    @ResponseBody
    public List<Datosacademicos> obtenerDatosAcademicos(@RequestParam int idempleado) {
        return datosacademicosService.listarDatosAcademicosPorEmpleado(idempleado);
    }

    //Actualizar Datos Academicos
    @RequestMapping(value = "actualizardatosacademicos", method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosAcademicos(@RequestBody Datosacademicos datosacademicos) {
        return datosacademicosService.update(datosacademicos);
    }

    //Obtener Grado academicos  
    @RequestMapping(value = "obtenergradosacademicos", method = RequestMethod.GET)
    @ResponseBody
    public List<Gradoacademico> obtenerGradosAcademicos(@RequestParam int idempleado) {
        return gradoacademicoService.listarGradoAcademicoPorEmpleado(idempleado);
    }

    //Actualizar Grado Academico
    @RequestMapping(value = "actualizargradoacademico", method = RequestMethod.POST)
    @ResponseBody
    public int actualizarGradosAcademicos(@RequestBody Gradoacademico gradoacademico) {
        return gradoacademicoService.update(gradoacademico);
    }

    //Obtener Datos Familia
    @RequestMapping(value = "obtenerdatosfamilia", method = RequestMethod.GET)
    @ResponseBody
    public Datosfamilia obtenerDatosFamilia(@RequestParam int idempleado) {
        return datosfamiliaService.obtenerDatosFamiliaPorEmpleado(idempleado);
    }

    //Actualizar Datos Familia
    @RequestMapping(value = "actualizardatosfamilia", method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosFamilia(@RequestBody Datosfamilia datosfamilia) {
        return datosfamiliaService.update(datosfamilia);
    }

    //Obtener Datos Hijo por idfamiila
    @RequestMapping(value = "obtenerdatoshijos", method = RequestMethod.GET)
    @ResponseBody
    public List<Datoshijos> obtenerDatosHijosPorFamilia(@RequestParam int idfamilia) {
        return datoshijosService.listarDatosHijosPorFamilia(idfamilia);
    }
    //Actualizar Datos Familia

    @RequestMapping(value = "actualizardatoshijos", method = RequestMethod.POST)
    @ResponseBody
    public int actualizarDatosFamilia(@RequestBody Datoshijos datoshijos) {
        return datoshijosService.update(datoshijos);
    }

    
    /*-------------------------------ELIMINAR--------------------------*/
    @RequestMapping(value = "eliminaradministrativo", method = RequestMethod.GET)
    @ResponseBody
    public int eliminarAdministrativo(@RequestParam int idadministrativo) {
        return administrativoService.drop(idadministrativo);
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


    //listar empleado   
    //Guardar adm
    @RequestMapping(value = "listempleado", method = RequestMethod.GET)
    @ResponseBody
    public List<Empleado> listarEmpleado() {
        return empleadoService.listarTodo();
    }

}
