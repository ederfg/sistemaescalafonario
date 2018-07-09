<%-- 
    Document   : registrodocente
    Created on : 14-mar-2018, 15:55:12
    Author     : Eder-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item"><a href="#/docente/mantenimiento">Registro Docente</a></li>
        <li class="breadcrumb-item active" aria-current="page">Agregar</li>
    </ol>
</nav>
<div class="container">
    <div class="py-5 text-center">
        <i class="material-icons md-48">assignment_ind</i>  
        <h2>REGISTRO DE DATOS DOCENTE</h2>
        <p class="lead">Para registrar a un nuevo docente ingrese los datos correspondientes, es preferible tener completo todo los campos.</p>
    </div>

    <div class="col-md-12 order-md-1">

        <form class="needs-validation" ng-submit="guardarTodoDocente(empleado, docente, datoslaboral, listadatosacademicos, listagradoacademico, datosfamilia, listadatoshijos)">
            <hr class="mb-4" color="blue" size=3>
            <h4 class="mb-3 text-primary">DATOS PERSONALES</h4>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="apPaterno"><b>Apellido Paterno</b></label>
                    <input type="text" class="form-control" id="apPaterno" placeholder="" value="" required
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
                    <select class="custom-select d-block w-100" id="estadoCivil" required ng-model="empleado.estadocivil">
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
                    <label for="grupoSang"><b>Grupo Sanguineo</b></label>
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


            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="depa"><b>Departamento</b></label>
                    <select class="custom-select d-block w-100" id="depa" required 
                            ng-model="departamento"
                            ng-options="departamento as departamento.nombredepartamento for departamento in departamentos track by departamento.id"
                            ng-change="listarProvincia(departamento)">
                        <option value="" selected="">Escoger...</option>
                    </select>
                    <div class="invalid-feedback">
                        Por favor selecciona un departamento
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="prov"><b>Provincia</b></label>
                    <select class="custom-select d-block w-100" id="prov" required
                            ng-model="provincia"
                            ng-options="provincia as provincia.nombreprovincia for provincia in provincias"
                            ng-change="listarDistrito(provincia)">
                        <option value="" selected="">Escoger...</option>
                    </select>
                    <div class="invalid-feedback">
                        Por favor selecciona una provincia
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="dist"><b>Distrito</b></label>
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
                <div class="col-md-3 mb-3">
                    <label for="cel"><b>Celular</b></label>
                    <input type="text" class="form-control" id="cel" placeholder="" value="" required ng-model="empleado.celular">
                    <div class="invalid-feedback">
                        Por favor ingrese un celular.
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="correo"><b>Correo</b><span class="text-muted">(Ejm: yelina24@gmail.com)</span></label>
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
                <div class="col-md-3 mb-3">
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
                        <input id="credit" name="1" type="radio" class="custom-control-input" checked required
                               ng-model="empleado.mayoringreso" ng-value="true">
                        <label class="custom-control-label" for="credit">Si</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="debit" name="1" type="radio" class="custom-control-input" required
                               ng-model="empleado.mayoringreso" ng-value="false">
                        <label class="custom-control-label" for="debit">No</label>
                    </div>
                </div>

                <div class="col-md-6 d-inline my-3">
                    <label for="sistPens"><b>¿Afiliado a algún sindicato?</b></label>     
                    <div class="custom-control custom-radio">
                        <input id="2" name="2" type="radio" class="custom-control-input" checked required
                               ng-model="empleado.afiliacionsindicato" ng-value="true">
                        <label class="custom-control-label" for="2">Si</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="3" name="2" type="radio" class="custom-control-input" required
                               ng-model="empleado.afiliacionsindicato" ng-value="false">
                        <label class="custom-control-label" for="3">No</label>
                    </div>
                </div>    

            </div> 

            <hr class="mb-4" color="blue" size=3>

            <h4 class="mb-3 text-warning">DATOS DE VINCULO LABORAL</h4>

            <div class="row">
                <div class="col-md-3 mb-3">
                    <label for="codigo">Código</label>
                    <input type="text" class="form-control" id="codigo" placeholder="" ng-model="docente.codigodocente" required>
                    <div class="invalid-feedback">
                        Es obligatorio ingresar el codigo
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="categoria">Categoría Docente</label>
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
                    <label for="regimenDed">Régimen Dedicación</label>
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
                    <label for="categoriaAdm">Nivel Remunerativo</label>
                    <select class="custom-select d-block w-100" id="categoriaAdm" ng-model="docente.nivelremunerativodoc" >
                        <option value="">Escoger...</option>
                        <option value="SPA">PRDE</option>
                        <option value="SPB">ASDE</option>
                        <option value="SPC">AUDE</option>
                        <option value="SPA">JPDE</option>
                        <option value="SPB">PRTC</option>
                        <option value="SPC">ASTC</option>
                        <option value="SPA">AUTC</option>
                        <option value="SPB">JPTC</option>
                        <option value="SPC">PRTP</option>
                        <option value="SPA">ASTP</option>
                        <option value="SPB">AUTP</option>
                        <option value="SPC">JPTP</option>

                    </select>
                    <div class="invalid-feedback">
                        Por favor selecciona una categoria. 
                    </div>
                </div> 

            </div>
            <p>{{docente| json}} </p>

            <div class="row">
                <div class="col-md-3 mb-3">
                    <label for="fechaIngreso">Fecha Ingreso a la Institución</label>
                    <input type="date" class="form-control" ng-model="datoslaboral.fechaingresoinst" id="fechaIngreso" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Por favor ingrese la fecha de ingreso a la institucion.
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="condicionLab">Condición Laboral</label>
                    <select class="custom-select d-block w-100" ng-model="datoslaboral.condicionlaboral" id="condicionLab" required>
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
                    <label for="tipoContrato">Tipo de Contrato</label>
                    <input type="text" class="form-control" ng-model="datoslaboral.tipocontrato" id="tipoContrato" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Por favor ingrese el tipo de contrato.
                    </div>
                </div>

                <div class="col-md-3 mb-3">
                    <label for="puesto">Puesto Ocupado</label>
                    <input type="text" class="form-control" ng-model="datoslaboral.puesto" id="puesto" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Por favor ingrese el puesto.
                    </div>
                </div>

            </div>  

            <div class="row">

                <div class="col-md-4 mb-3">
                    <label for="facultad">Facultad</label>
                    <select class="custom-select d-block w-100" ng-model="datoslaboral.facultad" id="facultad" required>
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
                <div class="col-md-3 mb-3">
                    <label for="ingresoMensual">Ingreso Mensual Bruto</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">S/</span>
                        </div>
                        <input type="text" class="form-control" ng-model="datoslaboral.ingmensualbruto" id="ingresoMensual" placeholder="" required>
                        <div class="invalid-feedback" style="width: 100%;">
                            Por favor ingrese el ingreso mensual.
                        </div>
                    </div>
                </div> 
                <div class="col-md-2 mb-3">
                    <label for="cese">Tipo de Cese</label>
                    <select class="custom-select d-block w-100" ng-model="datoslaboral.cese" id="cese" required>
                        <option value="">Escoger...</option>
                        <option value="Definitivo">Definitivo</option>
                        <option value="Parcial">Parcial</option>

                    </select>
                    <div class="invalid-feedback">
                        Por favor selecciona el tipo de cese.
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="fechaCese">Fecha de Cese</label>
                    <input type="date" class="form-control" ng-model="datoslaboral.fechacese" id="fechaCese" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Por favor ingrese la fecha de cese.
                    </div>
                </div> 
                <p>{{datoslaboral| json}} </p>
            </div>

            <hr class="mb-4" color="blue" size=3>            
            <h4 class="mb-3 text-danger">DATOS ACADEMICOS</h4>
            <div class="row">
                <div class="col-md-12">

                    <label>Llenar solo los niveles educativos que se obtuvieron</label>                

                    <br>
                    <button id="agregar" type="button" class="btn btn-toolbar" data-toggle="modal" data-target="#exampleModalA">
                        Agregar Nivel Educativo
                    </button>
                    <br>
                    <table class="table table-bordered btn-success">
                        <thead>
                            <tr>
                                <th scope="col">Nivel Educativo</th>
                                <th scope="col">Condición</th>
                                <th scope="col">Centro Educativo o Institucion</th>
                                <th scope="col">Año concluido</th>
                                <th scope="col">Especialidad</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="datoacademico in listadatosacademicos">
                                <td>{{datoacademico.gradoinstruccion}}</td>
                                <td>{{datoacademico.condicion}}</td>
                                <td>{{datoacademico.nombreinstitucion}}</td>
                                <td>{{datoacademico.anioegreso}}</td>
                                <td>{{datoacademico.especialidad}}</td>
                            </tr>

                        </tbody>
                    </table>

                    <label>Llenar solo los grados académicos obtenidos (opcional)</label>
                    <br>
                    <button id="agregar" type="button" class="btn btn-toolbar" data-toggle="modal" data-target="#exampleModalB">
                        Agregar Grado Academico
                    </button>
                    <br>
                    <table class="table table-bordered btn-success">
                        <thead>
                            <tr>
                                <th scope="col">Grado Academico</th>
                                <th scope="col">Condición</th>
                                <th scope="col">Institucion</th>
                                <th scope="col">Año concluido</th>
                                <th scope="col">Especialidad</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="gradoacademico in listagradoacademico">
                                <td>{{gradoacademico.grado}}</td>
                                <td>{{gradoacademico.condicion}}</td>
                                <td>{{gradoacademico.nombreinstitucion}}</td>
                                <td>{{gradoacademico.fechaconclusion}}</td>

                            </tr>

                        </tbody>
                    </table>
                    <p>{{listagradosacademico}}</p>
                </div>
            </div>


            <hr class="mb-4" color="blue" size=3>
            <h4 class="mb-3 text-info">DATOS FAMILIARES</h4>

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
                <div class="col-md-2 mb-3">
                    <label for="vive">¿Vive?</label>
                    <select class="custom-select d-block w-100" id="vive" required>
                        <option value="">Escoger...</option>
                        <option value="Si">Si</option>
                        <option value="No">No</option>
                    </select>
                    <div class="invalid-feedback">
                        Por favor seleccione si vive o no.
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

            <label><B>En caso de emergencia llamar a:</B></label>         
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
            <p>{{datosfamilia| json}}
                <label><B>Hijos (solo menores de edad)</B></label>

                <br>
                <button id="agregar" type="button" class="btn btn-toolbar" data-toggle="modal" data-target="#agregarHijo">
                    Agregar Hijo
                </button>
                <br>

            <table class="table table-bordered btn-success">
                <thead>
                    <tr>
                        <th scope="col">N°</th>
                        <th scope="col">DNI</th>
                        <th scope="col">Ap. Paterno</th>
                        <th scope="col">Ap. Materno</th>
                        <th scope="col">Nombres</th>
                        <th scope="col">Sexo</th>
                        <th scope="col">Fecha Nacimiento</th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="datohijo in listadatoshijos">
                        <th scope="row">{{$index + 1}}</th>
                        <td>{{datohijo.dnihijo}}</td>
                        <td>{{datohijo.appathijo}}</td>
                        <td>{{datohijo.apmathijo}}</td>
                        <td>{{datohijo.nombreshijo}}</td>
                        <td>{{datohijo.sexo}}</td>
                        <td>{{datohijo.fechanachijo}}</td>
                    </tr>

                </tbody>
            </table>                                          

            <p>{{listadatoshijos| json}}</p>


            <center>
                <button class="btn btn-secondary" type="button">Cancelar</button>
                <button class="btn btn-primary " type="submit">Guardar</button>
            </center>

        </form>

    </div>


</div>



<!-- Modal agregar hijo -->
<div class="modal fade" id="agregarHijo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registrar un hijo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-row">
                        <div class="col">
                            <input ng-model="datohijo.dnihijo" type="text" class=" form-control" id="CelularCony" placeholder="Dni" maxlength="8" required>
                        </div>
                        <div class="col">
                            <input ng-model="datohijo.appathijo" type="text" class=" form-control" id="CelularCony" placeholder="Ap. Paterno" value="" required>
                        </div>
                        <div class="col">
                            <input ng-model="datohijo.apmathijo" type="text" class=" form-control" id="CelularCony" placeholder="Ap. Materno" value="" required>
                        </div>
                        <div class="col">
                            <input ng-model="datohijo.nombreshijo" type="text" class="form-control" id="CelularCony" placeholder="Nombres" value="" required>
                        </div>
                        <div class="col">
                            <select ng-model="datohijo.sexo" class="custom-select d-block w-100" id="vive" placeholder="" required>
                                <option value="">Sexo...</option>
                                <option value="Masculino">Masculino</option>
                                <option value="Femenino">Femenino</option>
                            </select>
                        </div>
                        <div class="col">
                            <input ng-model="datohijo.fechanachijo" type="date" class="form-control" id="CelularCony" placeholder="Fecha Nacimiento" value="" required>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" ng-click="agregarhijo(datohijo)" class="btn btn-primary">Agregar</button>
            </div>
        </div>
    </div>
</div>


<!-- Modal agregar Nivel Educativo -->
<div class="modal fade" id="exampleModalA" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelA" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelA">Agregar Nivel Educativo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-row">
                        <div class="col">
                            <select class="custom-select d-block w-100" ng-model="datoacademico.gradoinstruccion" id="" placeholder="" required>
                                <option value="">Nivel Educativo...</option>
                                <option value="Primaria">Primaria</option>
                                <option value="Secundaria">Secundaria</option>
                                <option value="Tecnico">Tecnico</option>
                                <option value="Superior">Superior</option>
                            </select>
                        </div>
                        <div class="col">
                            <select class="custom-select d-block w-100" ng-model="datoacademico.condicion" id="" placeholder="" required>
                                <option value="">Condicion...</option>
                                <option value="Incompleta">Incompleta</option>
                                <option value="Completa">Completa</option>
                                <option value="Egresado">Egresado</option>
                                <option value="Titulado">Taitulado</option>
                            </select>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" ng-model="datoacademico.nombreinstitucion" id="" placeholder="Centro Educ. o institucion" value="" required>
                        </div>
                        <div class="col">
                            <input type="int" class="form-control" ng-model="datoacademico.anioegreso" id="" placeholder="Año concluido" value="" required>

                        </div>
                        <div class="col">
                            <input type="text" class="form-control" ng-model="datoacademico.especialidad" id="" placeholder="Especialidad" value="" required>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" ng-click="agregardatoacademico(datoacademico)" class="btn btn-primary">Agregar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal agregar Grado Academico -->
<div class="modal fade" id="exampleModalB" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelB" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelB">Agregar Grado Academico</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-row">
                        <div class="col">
                            <select class="custom-select d-block w-100" id="vive" placeholder="" ng-model="gradoacademico.grado" required>
                                <option value="">Grado...</option>
                                <option value="Bachiller">Bachiller</option>
                                <option value="Maestria">Maestria</option>
                                <option value="Doctorado">Doctorado</option>

                            </select>
                        </div>
                        <div class="col">
                            <select class="custom-select d-block w-100" id="vive" placeholder="" ng-model="gradoacademico.condicion" required>
                                <option value="">Condicion...</option>
                                <option value="Incompleta">Incompleta</option>
                                <option value="Egresado">Egresado</option>
                                <option value="Titulado">Titulado</option>
                            </select>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" id="CelularCony" placeholder="Centro Educ. o institucion" value="" ng-model="gradoacademico.nombreinstitucion" required>
                        </div>
                        <div class="col">
                            <input type="int" class="form-control" id="CelularCony" placeholder="Año concluido" value="" ng-model="gradoacademico.fechaconclusion" required>

                        </div>
                        <div class="col">
                            <input type="text" class="form-control" id="CelularCony" placeholder="Especialidad" value="" required>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" ng-click="agregargradoacademico(gradoacademico)" class="btn btn-primary">Agregar</button>
            </div>
        </div>
    </div>
</div>