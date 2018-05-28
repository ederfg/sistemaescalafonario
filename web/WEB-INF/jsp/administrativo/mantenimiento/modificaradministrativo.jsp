<%-- 
    Document   : modificaradministrativo
    Created on : 16/03/2018, 03:03:52 PM
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item"><a href="#/administrativo/mantenimiento">Registro Administrativos</a></li>
        <li class="breadcrumb-item active" aria-current="page">Modificar</li>
    </ol>
</nav>
<div class="container">
    <div class="py-5 text-center">
        <i class="material-icons md-48">assignment_ind</i>  
        <h2>MODIFICAR DATOS DEL PERSONAL</h2>
        <p class="lead">Modifique los datos requeridos del administrativo, luego guarde los cambios.</p>
    </div>

    <button class="btn btn-primary" ng-click="mostrarDatosPersonales()">Modificar Datos Personales</button>
    <button class="btn btn-success" ng-click="mostrarDatosAdministrativo()">Modificar Datos Administrativo</button>
    <button class="btn btn-warning" ng-click="mostrarDatosLaboral()">Modificar Datos Laboral</button>
    <button class="btn btn-danger" ng-click="mostrarDatosAcademicos()">Modificar Datos Académicos</button>
    <button class="btn btn-info" ng-click="mostrarGradosAcademicos()">Modificar Grados Académicos</button>
    <button class="btn btn-dark" ng-click="mostrarDatosFamilia()">Modificar Datos familia</button>
</div>





<!-- Modal Datos Laboral -->
<div class="modal fade" id="modalDatosLaboral" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelA" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelA">Modificar Datos Laboral</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form ng-submit="actualizarDatosLaboral(datoslaboral)">
                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="fechaIngreso">Fecha Ingreso a la Instit.</label>
                            <input type="date" class="form-control" ng-model="datoslaboral.fechaingresoinst" id="fechaIngreso" placeholder="" value="" >
                            <div class="invalid-feedback">
                                Por favor ingrese la fecha de ingreso a la institucion.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="tipoContrato">Tipo de Contrato</label>
                            <input type="text" class="form-control" ng-model="datoslaboral.tipocontrato" id="tipoContrato" placeholder="" value="" >
                            <div class="invalid-feedback">
                                Por favor ingrese el tipo de contrato.
                            </div>
                        </div> 

                    </div>  

                    <div class="form-row">
                        <div class="col-md-3 mb-3">
                            <label for="puesto">Puesto Ocupado</label>
                            <input type="text" class="form-control" ng-model="datoslaboral.puesto" id="puesto" placeholder="" value="" >
                            <div class="invalid-feedback">
                                Por favor ingrese el puesto.
                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="facultad">Facultad</label>
                            <select class="custom-select d-block w-100" ng-model="datoslaboral.facultad" id="facultad" >
                                <option value="">Escoger...</option>
                                <option>FAC. DE CIENCIAS AGRARIAS</option>
                                <option>FAC. DE CIENCIAS BIOLOGICAS</option>
                                <option>FAC. DE CIENCIAS DE LA EDUCACION</option>
                                <option>FAC. DE CIENCIAS ECONOMICAS , ADMINISTRATIVAS Y CONTABLES</option>
                                <option>FAC. DE CIENCIAS SOCIALES</option>
                                <option>FAC. DE DERECHO Y CIENCIAS POLITICAS</option>
                                <option>FAC. DE ENFERMERIA</option>
                                <option>FAC. DE INGENIERIA DE MINAS, GEOLOGIA Y CIVIL</option>
                                <option>FAC. DE INGENIERIA QUIMICA Y METALURGIA</option>
                                <option>FAC. DE OBSTETRICIA</option>

                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una Facultad
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="cese">Tipo de Cese</label>
                            <select class="custom-select d-block w-100" ng-model="datoslaboral.cese" id="cese" >
                                <option value="">Escoger...</option>
                                <option>Definitivo</option>
                                <option>Parcial</option>

                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona el tipo de cese.
                            </div>
                        </div>


                    </div>   

                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="ingresoMensual">Ingreso Mensual Bruto</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">S/</span>
                                </div>
                                <input type="text" class="form-control" ng-model="datoslaboral.ingmensualbruto" id="ingresoMensual" placeholder="" >
                                <div class="invalid-feedback" style="width: 100%;">
                                    Por favor ingrese el ingreso mensual.
                                </div>
                            </div>
                        </div>  
                        <div class="col-md-4 mb-3">
                            <label for="condicionLab">Condicion Laboral</label>
                            <select class="custom-select d-block w-100" ng-model="datoslaboral.condicionlaboral" id="condicionLab" >
                                <option value="">Escoger...</option>
                                <option>Nombrado</option>
                                <option>Contratado</option>
                                <option>CAS</option>
                                <option>Otros</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una condicion. 
                            </div>
                        </div> 

                        <div class="col-md-4 mb-3">
                            <label for="fechaCese">Fecha de Cese</label>
                            <input type="date" class="form-control" ng-model="datoslaboral.fechacese" id="fechaCese" placeholder="" value="" >
                            <div class="invalid-feedback">
                                Por favor ingrese la fecha de cese.
                            </div>
                        </div> 
                    </div> 
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<!-- Modal Para Datos personales  -->
<div class="modal fade" id="modalDatosPersonales" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelB" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelB">Modificar Datos perosnales</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form ng-submit="actualizarDatosPersonales(empleado)">
                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="apPaterno">Apellido Paterno</label>
                            <input type="text" class="form-control" id="apPaterno" placeholder="" ng-model="empleado.apellidopaterno" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el apellido paterno.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="apMaterno">Apellido Materno</label>
                            <input type="text" class="form-control" id="apMaterno" placeholder=""  ng-model="empleado.apellidomaterno" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el apellido materno.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="nombres">Nombres</label>
                            <input type="text" class="form-control" id="nombres" placeholder=""  ng-model="empleado.nombres" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar los nombres.
                            </div>
                        </div>  
                    </div>

                    <div class="form-row">
                        <div class="col-md-3 mb-3">
                            <label for="dni">DNI N°</label>
                            <input type="text" class="form-control" id="dni" placeholder="" ng-model="empleado.dni" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el DNI. 
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="fechaNac">Fecha de Nacimiento<span class="text-muted">(14/07/18)</span></label>
                            <input type="date" class="form-control" id="fechaNac" placeholder="" required ng-model="empleado.fechanacimiento" >
                            <div class="invalid-feedback">
                                Es obligatorio ingresar la fecha de nacimiento.
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label for="sexo">Sexo</label>
                            <select class="custom-select d-block w-100" ng-model="empleado.sexo" id="sexo" required>
                                <option value="">Escoger...</option>
                                <option value="MASCULINO">M</option>
                                <option value="FEMENINO">F</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un tipo de sexo.
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="estadoCivil">Estado Civil</label>
                            <select class="custom-select d-block w-100" ng-model="empleado.estadocivil" id="estadoCivil" required>
                                <option value="">Escoger...</option>
                                <option>Solter@</option>
                                <option>Casad@</option>
                                <option>Viud@</option>
                                <option>divorciad@</option>
                                <option>concubin@</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un estado civil.
                            </div>
                        </div>  

                    </div>  

                    <div class="mb-3">
                        <label for="direccion">Dirección</label>
                        <div class="input-group">
                            <input type="text" class="form-control" ng-model="empleado.direccion" id="direccion" placeholder="" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Por favor ingrese su direccion correcta
                            </div>
                        </div>
                    </div>


                    <div class="form-row">
                        <div class="col-md-3 mb-3">
                            <label for="depa">Departamento</label>
                            <input type="text" class="form-control" ng-model="empleado.distrito.provincia.departamento.nombredepartamento" 
                                   id="depa" placeholder="" required readonly="">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="prov">Provincia</label>
                            <input type="text" class="form-control" ng-model="empleado.distrito.provincia.nombreprovincia"
                                   id="prov" placeholder="" required readonly="">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="dist">Distrito</label>
                            <input type="text" class="form-control" ng-model="empleado.distrito.nombredistrito"
                                   id="dist" placeholder="" required readonly="">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="edit">Editar</label>
                            <input type="checkbox" class="form-control" ng-model="editarUbigeo"
                                   id="edit" placeholder="" required readonly="">
                        </div>
                    </div>


                    <div class="form-row" ng-if="editarUbigeo">
                        <div class="col-md-4 mb-3">
                            <label for="depa">Departamento</label>
                            <select class="custom-select d-block w-100" id="depa" required
                                    ng-model="departamento"
                                    ng-options="departamento as departamento.nombredepartamento for departamento in departamentos track by departamento.id"
                                    ng-change="listarProvincia(departamento)">
                                <option value="">Escoger...</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un departamento
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="prov">Provincia</label>
                            <select class="custom-select d-block w-100" id="prov" required
                                    ng-model="provincia"
                                    ng-options="provincia as provincia.nombreprovincia for provincia in provincias"
                                    ng-change="listarDistrito(provincia)">
                                <option value="">Escoger...</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una provincia
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="dist">Distrito</label>
                            <select class="custom-select d-block w-100" id="dist" required 
                                    ng-model="empleado.distrito" 
                                    ng-options="distrito as distrito.nombredistrito for distrito in distritos">
                                <option value="">Escoger...</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un distrito
                            </div>
                        </div>  

                    </div>   

                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="cel">Celular</label>
                            <input type="text" class="form-control" ng-model="empleado.celular" id="cel" placeholder=""  required>
                            <div class="invalid-feedback">
                                Por favor ingrese un celular.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="correo">Correo<span class="text-muted">(Ejm: yelina24@gmail.com)</span></label>
                            <input type="text" class="form-control" ng-model="empleado.correoelectronico" id="correo" placeholder=""  required>
                            <div class="invalid-feedback">
                                Por favor ingrese un correo.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="grupoSang">Grupo Sanguineo</label>
                            <select class="custom-select d-block w-100" ng-model="empleado.gruposanguineo" id="grupoSang" required>
                                <option value="">Escoger...</option>
                                <option>A+</option>
                                <option>A-</option>
                                <option>B+</option>
                                <option>B-</option>
                                <option>AB+</option>
                                <option>AB-</option>
                                <option>O+</option>
                                <option>O-</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona el tipo de sangue.
                            </div>
                        </div>

                    </div>

                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="ruc">N° de RUC</label>
                            <input type="text" class="form-control" ng-model="empleado.ruc" id="ruc" placeholder="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese su numero de RUC.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="sistPens">Sistema Pensionario</label>
                            <select class="custom-select d-block w-100" ng-model="empleado.sistemapensionario" id="sistPens" required>
                                <option value="">Escoger...</option>
                                <option>Sistema Nacional de Pensiones</option>
                                <option>Sistema Privado de Pensiones</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona el sistema pensionario
                            </div>
                        </div>


                        <div class="col-md-6 d-inline my-3">
                            <label for="sistPens">¿Perceptor de mayor ingreso en el hogar?</label>     
                            <div class="custom-control custom-radio">
                                <input id="credit" name="mayoringreso" type="radio" ng-model="empleado.mayoringreso" ng-value="true" class="custom-control-input" required>
                                <label class="custom-control-label" for="credit">Si</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="debit" name="mayoringreso" type="radio" ng-model="empleado.mayoringreso" ng-value="false" class="custom-control-input" required>
                                <label class="custom-control-label" for="debit">No</label>
                            </div>
                        </div>

                        <div class="col-md-6 d-inline my-3">
                            <label for="sistPens">¿Afiliado a algún sindicato?</label>     
                            <div class="custom-control custom-radio">
                                <input id="2" name="afiliacionsindicato" type="radio" ng-model="empleado.afiliacionsindicato" ng-value="true" class="custom-control-input" required>
                                <label class="custom-control-label" for="2">Si</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="3" name="afiliacionsindicato" type="radio" ng-model="empleado.afiliacionsindicato" ng-value="false" class="custom-control-input" required>
                                <label class="custom-control-label" for="3">No</label>
                            </div>
                        </div>    
                    </div> 
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<!-- Modal datos administrativo -->
<div class="modal fade" id="modalDatosAdministrativo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Datos administrativo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form ng-submit="actualizarDatosAdministrativo(administrativo)">
                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="codigo">Codigo</label>
                            <input type="text" class="form-control" id="codigo" placeholder="" ng-model="administrativo.codigoadministrativo" >
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el codigo
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="categoriaAdm">Categoria Administrativo</label>
                            <select class="custom-select d-block w-100" id="categoriaAdm" ng-model="administrativo.categoriaadministrativo" >
                                <option value="">Escoger...</option>
                                <option>Profesional</option>
                                <option>Tecnico</option>
                                <option>Auxiliar</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una categoria. 
                            </div>
                        </div> 

                        <div class="col-md-4 mb-3">
                            <label for="categoriaAdm">Nivel Remunerativo</label>
                            <select class="custom-select d-block w-100" id="categoriaAdm" ng-model="administrativo.nivelremunerativoadm" >
                                <option value="">Escoger...</option>
                                <option value="SPA">SPA</option>
                                <option value="SPB">SPB</option>
                                <option value="SPC">SPC</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una categoria. 
                            </div>
                        </div> 

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<!-- Modal datos academicos -->
<div class="modal fade" id="modalDatosAcademicos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Datos académicos</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body modal-lg">
                <form ng-submit="actualizarDatosAcademicos(listadoDatosAcademicos)">
                    <div class="form-row">

                        <table class="table table-responsive" border="1">
                            <thead>
                                <tr>
                                    <th>Grado instruccion</th>
                                    <th>Condicion</th>
                                    <th>Nombre institucion</th>
                                    <th>Año egreso</th>
                                    <th>Especialidad</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="datoacademico in listadoDatosAcademicos| orderBy: 'id'">
                                    <td>
                                        <select class="form-control" ng-model="datoacademico.gradoinstruccion" id="vive" placeholder="" style="width: 150px" required>
                                            <option value="">Nivel Educativo...</option>
                                            <option>Primaria</option>
                                            <option>Secundaria</option>
                                            <option>Tecnico</option>
                                            <option>Superior</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control" ng-model="datoacademico.condicion" id="vive" placeholder="" style="width: 130px" required>
                                            <option value="">Condicion...</option>
                                            <option>Incompleta</option>
                                            <option>Completa</option>
                                            <option>Egresado</option>
                                            <option>Titulado</option>
                                        </select>
                                    </td>
                                    <td><input class="form-control" type="text" ng-model="datoacademico.nombreinstitucion"></td>
                                    <td><input class="form-control" type="text" ng-model="datoacademico.anioegreso" style="width: 80px"></td>
                                    <td><input class="form-control" type="text" ng-model="datoacademico.especialidad"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<!-- Modal grado academicos -->
<div class="modal fade" id="modalGradosAcademicos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Datos académicos</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body modal-lg">
                <form ng-submit="actualizarGradosAcademicos(listadoGradosAcademicos)">
                    <div class="form-row">

                        <table class="table table-responsive" border="1">
                            <thead>
                                <tr>
                                    <th>Grado</th>
                                    <th>Condición</th>
                                    <th>Nombre institucion</th>
                                    <th>Fecha conclusion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="gradoacademico in listadoGradosAcademicos| orderBy: 'id'">
                                    <td>
                                        <select class="form-control" id="vive" placeholder="" ng-model="gradoacademico.grado" required>
                                            <option value="">Grado...</option>
                                            <option>Bachiller</option>
                                            <option>Maestria</option>
                                            <option>Doctorado</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control" id="vive" placeholder="" ng-model="gradoacademico.condicion" required>
                                            <option value="">Condicion...</option>
                                            <option>Incompleta</option>
                                            <option>Egresado</option>
                                            <option>Titulado</option>
                                        </select>
                                    </td>
                                    <td><input class="form-control" type="text" ng-model="gradoacademico.nombreinstitucion"></td>
                                    <td><input class="form-control" type="text" ng-model="gradoacademico.fechaconclusion" style="width: 80px"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<!-- Modal datos familia -->
<div class="modal fade" id="modalDatosFamilia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Datos Familiares</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body modal-lg">
                <form ng-submit="actualizarDatosFamilia(datosfamilia,listadodatoshijos)">
                    <div class="form">

                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <label for="apPatCony">Ap. Paterno Conyugue</label>
                                <input ng-model="datosfamilia.appatconyugue" type="text" class="form-control" id="apPatCony" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Es necesario ingresar el apellido paterno del conyugue.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="apMatCony">Ap. Materno Conyugue</label>
                                <input ng-model="datosfamilia.apmatconyugue" type="text" class="form-control" id="apMatCony" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Es necesario ingresar el apellido materno del conyugue.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="nombCony">Nombres Conyugue</label>
                                <input ng-model="datosfamilia.nombresconyugue" type="text" class="form-control" id="nombCony" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Es necesario ingresar el nombre del conyugue.
                                </div>
                            </div>  
                        </div>

                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="dnicony">DNI Conyugue N°</label>
                                <input ng-model="datosfamilia.dniconyugue" maxlength="8" type="text" class="form-control" id="dnicony" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Ingrese el DNI del conyugue.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="fechaNacCony">Fecha de Nac. Conyugue</label>
                                <input ng-model="datosfamilia.fechanacimiconyugue" type="date" class="form-control" id="fechaNacCony" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Ingrese la fecha de nacimineto del conyugue.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="CelularCony">Celular</label>
                                <input ng-model="datosfamilia.celularconyugue" type="text" class="form-control" id="CelularCony" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Ingrese el numero de celular.
                                </div>
                            </div> 
                        </div>
                        <h4>En caso de emergencia:</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="ruc">Nombre de emergencia</label>
                                <input ng-model="datosfamilia.nombreemergencia" type="text" class="form-control" id="ruc" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Por favor ingrese el nombre de emergencia
                                </div>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="ruc">Celular de emergencia</label>
                                <input ng-model="datosfamilia.celularemergencia" type="text" class="form-control" id="ruc" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Por favor ingrese el celular de emergencia
                                </div>
                            </div>
                        </div>

                        <h4>Datos Hijos:</h4>
                        <table class="table table-responsive" border="1">
                            <thead>
                                <tr>
                                    <th>DNI</th>
                                    <th>AP. PATERNO</th>
                                    <th>AP. MATERNO</th>
                                    <th>NOMBRES</th>
                                    <th>FECHA NACIMIENTO</th>
                                    <th>SEXO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="datohijo in listadodatoshijos| orderBy: 'id'">
                                    <td><input class="form-control" type="text" ng-model="datohijo.dnihijo"></td>
                                    <td><input class="form-control" type="text" ng-model="datohijo.appathijo"></td>
                                    <td><input class="form-control" type="text" ng-model="datohijo.apmathijo"></td>
                                    <td><input class="form-control" type="text" ng-model="datohijo.nombreshijo"></td>
                                    <td><input class="form-control" type="date" ng-model="datohijo.fechanachijo"></td>
                                    <td>
                                        <select class="form-control" id="vive" placeholder="" ng-model="datohijo.sexo" required style="width: 65px">
                                            <option value="">Sexo...</option>
                                            <option>M</option>
                                            <option>F</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>