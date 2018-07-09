<%-- 
    Document   : modificardocente
    Created on : 14-mar-2018, 16:22:13
    Author     : Eder-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item"><a href="#/docente/mantenimiento">Registro Docente</a></li>
        <li class="breadcrumb-item active" aria-current="page">Modificar</li>
    </ol>
</nav>

<div class="container">
    <div class="py-5 text-center">
        <i class="material-icons md-48">assignment_ind</i>  
        <h2>MODIFICAR DATOS DEL PERSONAL</h2>
        <p class="lead">Modifique los datos del docente, no se olvide de guardar los cambios.</p>
    </div>

    <!-- <div class="btn-group-vertical">
     <button class="btn btn-primary" ng-click="mostrarDatosPersonales()" fixed-bottom>Modificar Datos Personales</button>
      
     <button class="btn btn-success" ng-click="mostrarDatosDocente()" fixed-bottom>Modificar Datos Docente</button>
      
     <button class="btn btn-warning" ng-click="mostrarDatosLaboral()">Modificar Datos Laboral</button>
     
     <button class="btn btn-danger" ng-click="mostrarDatosAcademicos()">Modificar Datos Académicos</button>
      
     <button class="btn btn-info" ng-click="mostrarGradosAcademicos()">Modificar Grados Académicos</button>
     
     <button class="btn btn-dark" ng-click="mostrarDatosFamilia()">Modificar Datos familia</button>
     </div>-->
    <center>    

        <ul class="list-group list-group-flush">
            <li class="list-group-item"><button class="btn btn-primary btn-lg" ng-click="mostrarDatosPersonales()">Modificar Datos Personales</button></li>
            <li class="list-group-item"><button class="btn btn-success btn-lg" ng-click="mostrarDatosDocente()">Modificar Datos Docente</button></li>
            <li class="list-group-item"><button class="btn btn-warning btn-lg" ng-click="mostrarDatosLaboral()">Modificar Datos Laborales</button></li>
            <li class="list-group-item"><button class="btn btn-danger btn-lg" ng-click="mostrarDatosAcademicos()">Modificar Datos Académicos</button></li>
            <li class="list-group-item"><button class="btn btn-info btn-lg" ng-click="mostrarGradosAcademicos()">Modificar Grados Académicos</button></li>
            <li class="list-group-item"><button class="btn btn-dark btn-lg" ng-click="mostrarDatosFamilia()">Modificar Datos familiares</button></li>
        </ul>

    </center>


    <!-- Modal Para Datos personales  -->
    <div class="modal fade" id="modalDatosPersonales" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelB" aria-hidden="true">
        <div class=" modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="exampleModalLabelB" >Modificar Datos Personales</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form ng-submit="actualizarDatosPersonales(empleado)">
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <label for="apPaterno"><b>Apellido Paterno</b></label>
                                <input type="text" class="form-control" id="apPaterno" placeholder="" required
                                       ng-model="empleado.apellidopaterno">
                                <div class="invalid-feedback">
                                    Es obligatorio ingresar el apellido paterno.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="apMaterno"><b>Apellido Materno</b></label>
                                <input type="text" class="form-control" id="apMaterno" placeholder="" value="" required
                                       ng-model="empleado.apellidomaterno">
                                <div class="invalid-feedback">
                                    Es obligatorio ingresar el apellido materno.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="nombres"><b>Nombres</b></label>
                                <input type="text" class="form-control" id="nombres" placeholder="" value="" required
                                       ng-model="empleado.nombres">
                                <div class="invalid-feedback">
                                    Es obligatorio ingresar los nombres.
                                </div>
                            </div>  
                        </div>

                        <div class="row">
                            <div class="col-md-2 mb-3">
                                <label for="dni"><b>DNI N°</b></label>
                                <input type="text" class="form-control" id="dni" placeholder="" value="" required ng-model="empleado.dni">
                                <div class="invalid-feedback">
                                    Es obligatorio ingresar el DNI. 
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="fechaNac"><b>Fecha de Nacimiento</b></label>
                                <input type="date" class="form-control" id="fechaNac" placeholder="" value="" required ng-model="empleado.fechanacimiento">
                                <div class="invalid-feedback">
                                    Es obligatorio ingresar la fecha de nacimiento.
                                </div>
                            </div>
                            <div class="col-md-2 mb-3">
                                <label for="sexo"><b>Sexo</b></label>
                                <select class="custom-select d-block w-100" id="sexo" required ng-model="empleado.sexo">
                                    <option value="">Escoger...</option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona un tipo de sexo.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="estadoCivil"><b>Estado Civil</b></label>
                                <select class="custom-select d-block w-100" ng-model="empleado.estadocivil" id="estadoCivil" required>
                                    <option value="">Escoger...</option>
                                    <option value="Solter@">Solter@</option>
                                    <option value="Casad@">Casad@</option>
                                    <option value="Viud@">Viud@</option>
                                    <option value="Divorciad@">Divorciad@</option>
                                    <option value="Concubin@">Concubin@</option>
                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona un estado civil.
                                </div>
                            </div> 
                            <div class="col-md-2 mb-3">
                                <label for="grupoSang"><b>G. Sanguineo</b></label>
                                <select class="custom-select d-block w-100" id="grupoSang" required ng-model="empleado.gruposanguineo">
                                    <option value="">Escoger...</option>
                                    <option value="A+">A+</option>
                                    <option value="A-">A-</option>
                                    <option value="B+">B+</option>
                                    <option value="B-">B-</option>
                                    <option value="AB+">AB+</option>
                                    <option value="AB-">AB-</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona el tipo de sangue.
                                </div>
                            </div>

                        </div>  

                        <div class="mb-3">
                            <label for="direccion"><b>Dirección</b></label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="direccion" placeholder="" required ng-model="empleado.direccion">
                                <div class="invalid-feedback" style="width: 100%;">
                                    Por favor ingrese su direccion correcta
                                </div>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="col-md-3 mb-3">
                                <label for="depa"><b>Departamento</b></label>
                                <input type="text" class="form-control" ng-model="empleado.distrito.provincia.departamento.nombredepartamento" 
                                       id="depa" placeholder="" required readonly="">
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="prov"><b>Provincia</b></label>
                                <input type="text" class="form-control" ng-model="empleado.distrito.provincia.nombreprovincia"
                                       id="prov" placeholder="" required readonly="">
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="dist"><b>Distrito</b></label>
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

                        <div class="row">
                            <div class="col-md-2 mb-3">
                                <label for="cel"><b>Celular</b></label>
                                <input type="text" class="form-control" id="cel" placeholder="" value="" required ng-model="empleado.celular">
                                <div class="invalid-feedback">
                                    Por favor ingrese un celular.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="correo"><b>Correo</b></label>
                                <input type="text" class="form-control" id="correo" placeholder="" value="" required ng-model="empleado.correoelectronico">
                                <div class="invalid-feedback">
                                    Por favor ingrese un correo.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="ruc"><b>N° de RUC</b></label>
                                <input type="text" class="form-control" id="ruc" placeholder="" value="" required ng-model="empleado.ruc">
                                <div class="invalid-feedback">
                                    Por favor ingrese su numero de RUC.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="sistPens"><b>Sistema Pensionario</b></label>
                                <select class="custom-select d-block w-100" id="sistPens" required ng-model="empleado.sistemapensionario">
                                    <option value="">Escoger...</option>
                                    <option value="Sistema Nacional de Pensiones">Sistema Nacional de Pensiones</option>
                                    <option value="Sistema Privado de Pensiones">Sistema Privado de Pensiones</option>
                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona el sistema pensionario
                                </div>
                            </div>


                        </div>

                        <div class="row">


                            <div class="col-md-6 d-inline my-3">
                                <label for="sistPens"><b>¿Perceptor de mayor ingreso en el hogar?</b></label>     
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
                                <label for="sistPens"><b>¿Afiliado a algún sindicato?</b></label>     
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


    <!-- Modal datos docente -->
    <div class="modal fade" id="modalDatosDocente" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class=" modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-success text-white">
                    <h5 class="modal-title" id="exampleModalLabel">Datos Docente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form ng-submit="actualizarDatosDocente(docente)">
                        <div class="form-row">
                            <div class="col-md-3 mb-3">
                                <label for="codigo"><b>Código</b></label>
                                <input type="text" class="form-control" id="codigo" placeholder="" ng-model="docente.codigodocente" required>
                                <div class="invalid-feedback">
                                    Es obligatorio ingresar el codigo
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="categoria"><b>Categoría Docente</b></label>
                                <select class="custom-select d-block w-100" id="categoria" ng-model="docente.categoriadocente" required>
                                    <option value="">Escoger...</option>
                                    <option value="Principal">Principal</option>
                                    <option value="Asociado">Asociado</option>
                                    <option value="Auxiliar" >Auxiliar</option>
                                    <option value="Jefe Prácticas">Jefe Prácticas</option>
                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona una categoria. 
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="regimenDed"><b>Régimen Dedicación</b></label>
                                <select class="custom-select d-block w-100" id="regimenDed" ng-model="docente.regimendedicacion" required>
                                    <option value="">Escoger...</option>
                                    <option value="Exclusivo">Exclusivo</option>
                                    <option value="Completo">Completo</option>
                                    <option value="Parcial">Parcial</option>

                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona un regimen de dedicacion. 
                                </div>
                            </div> 
                            <div class="col-md-3 mb-3">
                                <label for="categoriaAdm"><b>Nivel Remunerativo</b></label>
                                <select class="custom-select d-block w-100" id="categoriaAdm" ng-model="docente.nivelremunerativodoc" >
                                    <option value="">Escoger...</option>
                                    <option value="PRDE">PRDE</option>
                                    <option value="ASDE">ASDE</option>
                                    <option value="AUDE">AUDE</option>
                                    <option value="JPDE">JPDE</option>
                                    <option value="PRTC">PRTC</option>
                                    <option value="ASTC">ASTC</option>
                                    <option value="AUTC">AUTC</option>
                                    <option value="JPTC">JPTC</option>
                                    <option value="PRTP">PRTP</option>
                                    <option value="ASTP">ASTP</option>
                                    <option value="AUTP">AUTP</option>
                                    <option value="JPTP">JPTP</option>

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



    <!-- Modal Datos Laboral -->
    <div class="modal fade" id="modalDatosLaboral" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelA" aria-hidden="true">
        <div class=" modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-warning text-dark">
                    <h5 class="modal-title" id="exampleModalLabelA">Modificar Datos Laboral</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form ng-submit="actualizarDatosLaboral(datoslaboral)">
                        <div class="form-row">
                            <div class="col-md-3 mb-3">
                                <label for="fechaIngreso"><b>Fecha Ingreso a la Instit.</b></label>
                                <input type="date" class="form-control" ng-model="datoslaboral.fechaingresoinst" id="fechaIngreso" placeholder="" value="" >
                                <div class="invalid-feedback">
                                    Por favor ingrese la fecha de ingreso a la institucion.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="condicionLab"><b>Condicion Laboral</b></label>
                                <select class="custom-select d-block w-100" ng-model="datoslaboral.condicionlaboral" id="condicionLab" >
                                    <option value="">Escoger...</option>
                                    <option value="Nombrado">Nombrado</option>
                                    <option value="Contratado">Contratado</option>
                                    <option value="CAS">CAS</option>
                                    <option value="Otros">Otros</option>
                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona una condicion. 
                                </div>
                            </div>

                            <div class="col-md-3 mb-3">
                                <label for="tipoContrato"><b>Tipo de Contrato</b></label>
                                <input type="text" class="form-control" ng-model="datoslaboral.tipocontrato" id="tipoContrato" placeholder="" value="" >
                                <div class="invalid-feedback">
                                    Por favor ingrese el tipo de contrato.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="puesto"><b>Puesto Ocupado</b></label>
                                <input type="text" class="form-control" ng-model="datoslaboral.puesto" id="puesto" placeholder="" value="" >
                                <div class="invalid-feedback">
                                    Por favor ingrese el puesto.
                                </div>
                            </div>

                        </div>  

                        <div class="form-row">

                            <div class="col-md-5 mb-3">
                                <label for="facultad"><b>Facultad</b></label>
                                <select class="custom-select d-block w-100" ng-model="datoslaboral.facultad" id="facultad" >
                                    <option value="">Escoger...</option>
                                    <option value="FACULTAD DE CIENCIAS AGRARIAS">FACULTAD DE CIENCIAS AGRARIAS</option>
                                    <option value="FACULTAD DE CIENCIAS BIOLOGICAS">FACULTAD DE CIENCIAS BIOLOGICAS</option>
                                    <option value="FACULTAD DE CIENCIAS DE LA EDUCACION">FACULTAD DE CIENCIAS DE LA EDUCACION</option>
                                    <option value="FACULTAD DE CIENCIAS ECONOM. , ADMINIST. Y CONTAB.">FACULTAD DE CIENCIAS ECONOM. , ADMINIST. Y CONTAB.</option>
                                    <option value="FACULTAD DE CIENCIAS SOCIALES">FACULTAD DE CIENCIAS SOCIALES</option>
                                    <option value="FACULTAD DE DERECHO Y CIENCIAS POLITICAS">FACULTAD DE DERECHO Y CIENCIAS POLITICAS</option>
                                    <option value="FACULTAD DE ENFERMERIA">FACULTAD DE ENFERMERIA</option>
                                    <option value="FACULTAD DE INGENIERIA DE MINAS, GEOLOGIA Y CIVIL">FACULTAD DE INGENIERIA DE MINAS, GEOLOGIA Y CIVIL</option>
                                    <option value="FACULTAD DE INGENIERIA QUIMICA Y METALURGIA">FACULTAD DE INGENIERIA QUIMICA Y METALURGIA</option>
                                    <option value="FACULTAD DE OBSTETRICIA">FACULTAD DE OBSTETRICIA</option>

                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona una Facultad
                                </div>
                            </div>
                            <div class="col-md-2 mb-3">
                                <label for="ingresoMensual"><b>Ing. Mens. Bruto</b></label>
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
                            <div class="col-md-2 mb-3">
                                <label for="cese"><b>Tipo de Cese</b></label>
                                <select class="custom-select d-block w-100" ng-model="datoslaboral.cese" id="cese" >
                                    <option value="">Escoger...</option>
                                    <option value="Definitivo">Definitivo</option>
                                    <option value="Parcial">Parcial</option>

                                </select>
                                <div class="invalid-feedback">
                                    Por favor selecciona el tipo de cese.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="fechaCese"><b>Fecha de Cese</b></label>
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

    <!-- Modal datos academicos -->
    <div class="modal fade" id="modalDatosAcademicos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class=" modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-danger text-white">
                    <h5 class="modal-title" id="exampleModalLabel">Datos Académicos</h5>
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
                                                <option value="Primaria">Primaria</option>
                                                <option value="Secundaria">Secundaria</option>
                                                <option value="Tecnico">Tecnico</option>
                                                <option value="Superior">Superior</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" ng-model="datoacademico.condicion" id="vive" placeholder="" style="width: 130px" required>
                                                <option value="">Condicion...</option>
                                                <option value="Incompleta">Incompleta</option>
                                                <option value="Completa">Completa</option>
                                                <option value="Egresado">Egresado</option>
                                                <option value="Titulado">Taitulado</option>
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
                <div class="modal-header bg-info text-white">
                    <h5 class="modal-title" id="exampleModalLabel">Grados Académicos</h5>
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
                                                <option value="Bachiller">Bachiller</option>
                                                <option value="Maestria">Maestria</option>
                                                <option value="Doctorado">Doctorado</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="vive" placeholder="" ng-model="gradoacademico.condicion" required>
                                                <option value="">Condicion...</option>
                                                <option value="Incompleta">Incompleta</option>
                                                <option value="Egresado">Egresado</option>
                                                <option value="Titulado">Titulado</option>
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
                <div class="modal-header bg-dark text-white">
                    <h5 class="modal-title" id="exampleModalLabel">Datos Familiares</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body modal-lg">
                    <form ng-submit="actualizarDatosFamilia(datosfamilia, listadodatoshijos)">
                        <div class="form">

                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label for="apPatCony"><b>Ap. Paterno Conyugue</b></label>
                                    <input ng-model="datosfamilia.appatconyugue" type="text" class="form-control" id="apPatCony" placeholder="" value="" required>
                                    <div class="invalid-feedback">
                                        Es necesario ingresar el apellido paterno del conyugue.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="apMatCony"><b>Ap. Materno Conyugue</b></label>
                                    <input ng-model="datosfamilia.apmatconyugue" type="text" class="form-control" id="apMatCony" placeholder="" value="" required>
                                    <div class="invalid-feedback">
                                        Es necesario ingresar el apellido materno del conyugue.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="nombCony"><b>Nombres Conyugue</b></label>
                                    <input ng-model="datosfamilia.nombresconyugue" type="text" class="form-control" id="nombCony" placeholder="" value="" required>
                                    <div class="invalid-feedback">
                                        Es necesario ingresar el nombre del conyugue.
                                    </div>
                                </div>  
                            </div>

                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="dnicony"><b>DNI Conyugue N°</b></label>
                                    <input ng-model="datosfamilia.dniconyugue" maxlength="8" type="text" class="form-control" id="dnicony" placeholder="" value="" required>
                                    <div class="invalid-feedback">
                                        Ingrese el DNI del conyugue.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="fechaNacCony"><b>Fecha de Nac. Conyugue</b></label>
                                    <input ng-model="datosfamilia.fechanacimiconyugue" type="date" class="form-control" id="fechaNacCony" placeholder="" value="" required>
                                    <div class="invalid-feedback">
                                        Ingrese la fecha de nacimineto del conyugue.
                                    </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="CelularCony"><b>Celular Conyugue</b></label>
                                    <input ng-model="datosfamilia.celularconyugue" type="text" class="form-control" id="CelularCony" placeholder="" value="" required>
                                    <div class="invalid-feedback">
                                        Ingrese el numero de celular.
                                    </div>
                                </div> 
                            </div>
                            <h4>En caso de emergencia, comunicarce con:</h4>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="ruc"><b>Nombre de emergencia</b></label>
                                    <input ng-model="datosfamilia.nombreemergencia" type="text" class="form-control" id="ruc" placeholder="" value="" required>
                                    <div class="invalid-feedback">
                                        Por favor ingrese el nombre de emergencia
                                    </div>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label for="ruc"><b>Celular de emergencia</b></label>
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
                                                <option value="Masculino">Masculino</option>
                                                <option value="Femenino">Femenino</option>
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


