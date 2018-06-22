<%-- 
    Document   : mantenimientoadministrativo
    Created on : 16/03/2018, 02:43:58 PM
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item active" aria-current="page">Registro Administrativos</li>
    </ol>
</nav>
<main role="main" class="col-md-12 ml-sm-auto col-lg-12 pt-3 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom ">
        <h1 class="h2 col-md-6">Registro de Administrativos</h1>
        <a href="#/administrativo/mantenimiento/agregaradministrativo" class="btn btn-sm btn-primary">
            <span data-feather="plus-circle"></span>
            AGREGAR NUEVO
        </a>
    </div>

    <div class="table-responsive">
        <div class="form-inline">
            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group mb-2">
                        <label for="staticEmail2" class="sr-only">DNI</label>
                        <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="Busqueda por DNI">
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword2" class="sr-only">DNI</label>
                        <input type="text" class="form-control" id="inputPassword2" placeholder="">
                    </div>
                    <button type="submit" class="btn btn-dark mb-2">Buscar</button>
                </form>

            </div>
            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group mb-2">
                        <label for="staticEmail2" class="sr-only">Apellido</label>
                        <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="Busqueda por Apellido">
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword2" class="sr-only">Apellido</label>
                        <input type="text" class="form-control" id="inputPassword2" placeholder="">
                    </div>
                    <button type="submit" class="btn btn-dark mb-2">Buscar</button>
                </form>

            </div>
        </div>
        <input type="search" ng-model="busqueda">
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th>N°</th>
                    <th>DNI</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Categoria</th>
                    <th>Régimen</th>
                    <th>Facultad</th>
                    <th>Sexo</th>
                    <th>Opción 1</th>
                    <th>Opción 2</th>
                    <th>Opción 3</th>

                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="administrativo in administrativos| filter: busqueda">
                    <td>{{administrativo.id}}</td>
                    <td>{{administrativo.empleado.dni}}</td>
                    <td>{{administrativo.empleado.apellidopaterno}} {{administrativo.empleado.apellidomaterno}}</td>
                    <td>{{administrativo.empleado.nombres}}</td>
                    <td>Asociado</td>
                    <td>Tiempo Completo</td>
                    <td>FCEAC</td>
                    <td>{{administrativo.empleado.sexo}}</td>
                    <td><a href="#/administrativo/mantenimiento/modificaradministrativo/{{administrativo.empleado.id}}" class="btn btn-success">Modificar</a></td>
                    <td>
                        <!-- Button trigger modal -->
                        <button id="agregar" type="button" class="btn btn-info" ng-click="verDetalleAdministrativo(administrativo.empleado.id)" data-toggle="modal" data-target="#modalDetalleAdministrativo">
                            Ver
                        </button>

                    </td>
                    <!-- <td><a href="#/administrativo/mantenimiento/veradministrativo" class="btn btn-info">Ver</a></td> -->
                    <td><button ng-click="eliminarAdministrativo(administrativo.empleado.id)"  class="btn btn-danger">Eliminar</button></td>
                </tr>

            </tbody>
        </table>
    </div>
</main>


<!-- Modal ver administrativo-->
<div class="modal fade" id="modalDetalleAdministrativo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">

                <h3 class="modal-title" id="exampleModalLabel">DATOS DEL ADMINISTRATIVO</h3>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <br>
            <div class="container">

                <div class="col-md-12 order-md-1">
                    <h4 class="mb-3">DATOS PERSONALES</h4>
                    <table class="table table-sm table-bordered table-striped" border="1">
                        <thead>
                            <tr>
                                <th>APELLIDO PATERNO</th>
                                <th>APELLIDO MATERNO</th>
                                <th>NOMBRES</th>
                                <th>DNI</th>
                                <th>SEXO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{empleado.apellidopaterno}}</td>
                                <td>{{empleado.apellidomaterno}}</td>
                                <td>{{empleado.nombres}}</td>
                                <td>{{empleado.dni}}</td>
                                <td>{{empleado.sexo}}</td>
                            </tr>
                        </tbody>

                        <thead>
                            <tr>
                                <th>FECHA NACIMIENTO</th>
                                <th>CORREO</th>
                                <th>ESTADO CIVIL</th>
                                <th>RUC</th>
                                <th>CELULAR</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{empleado.fechanacimiento}}</td>
                                <td>{{empleado.correoelectronico}}</td>
                                <td>{{empleado.estadocivil}}</td>
                                <td>{{empleado.ruc}}</td>
                                <td>{{empleado.celular}}</td>
                            </tr>
                        </tbody>

                        <thead>
                            <tr>
                                <th>DEPARTAMENTO</th>
                                <th>PROVINCIA</th>
                                <th>DISTRITO</th>
                                <th colspan="2">DIRECCIÓN</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{empleado.distrito.provincia.departamento.nombredepartamento}}</td>
                                <td>{{empleado.distrito.provincia.nombreprovincia}}</td>
                                <td>{{empleado.distrito.nombredistrito}}</td>
                                <td colspan="2">{{empleado.direccion}}</td>
                            </tr>
                        </tbody>

                        <thead>
                            <tr>
                                <th>GRUPO SANGUINEO</th>
                                <th>PERCEPTOR MAYOR INGRESO?</th>
                                <th>AFILIDADO ALGUN SINDICATO?</th>
                                <th colspan="2">SISTEMA PENSIONARIO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{empleado.gruposanguineo}}</td>
                                <td>{{empleado.mayoringreso}}</td>
                                <td>{{empleado.afiliacionsindicato}}</td>
                                <td colspan="2">{{empleado.sistemapensionario}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>


                <div class="col-md-12 order-md-1">
                    <h4 class="mb-3">DATOS ADMINISTRATIVO</h4>
                    <table class="table table-sm table-bordered table-striped" border="1">
                        <thead>
                            <tr>
                                <th>CÓDIGO</th>
                                <th>CATEGORIA</th>
                                <th>NIVEL REMUNERATIVO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{administrativo.codigoadministrativo}}</td>
                                <td>{{administrativo.categoriaadministrativo}}</td>
                                <td>{{administrativo.nivelremunerativoadm}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>


                <div class="col-md-12 order-md-1">
                    <h4 class="mb-3">DATOS LABORAL</h4>
                    <table class="table table-sm table-bordered table-striped" border="1">
                        <thead>
                            <tr>
                                <th>FECHA INGRESO</th>
                                <th>TIPO CONTRATO</th>
                                <th>PUESTO</th>
                                <th>FACULTAD</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{datoslaboral.fechaingresoinst}}</td>
                                <td>{{datoslaboral.tipocontrato}}</td>
                                <td>{{datoslaboral.puesto}}</td>
                                <td>{{datoslaboral.facultad}}</td>
                            </tr>
                        </tbody>

                        <thead>
                            <tr>
                                <th>TIPO CESE</th>
                                <th>INGRESO MENSUAL</th>
                                <th>CONDICION LABORAL</th>
                                <th>FECHA CESE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{datoslaboral.cese}}</td>
                                <td>{{datoslaboral.ingmensualbruto}}</td>
                                <td>{{datoslaboral.condicionlaboral}}</td>
                                <td>{{datoslaboral.fechacese}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-md-12 order-md-1">
                    <h4 class="mb-3">DATOS ACADEMICOS</h4>
                    <table class="table table-sm table-bordered table-striped" border="1">
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
                            <tr ng-repeat="datoacademico in listadoDatosAcademicos">
                                <td>{{datoacademico.gradoinstruccion}}</td>
                                <td>{{datoacademico.condicion}}</td>
                                <td>{{datoacademico.nombreinstitucion}}</td>
                                <td>{{datoacademico.anioegreso}}</td>
                                <td>{{datoacademico.especialidad}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-md-12 order-md-1">
                    <h4 class="mb-3">GRADOS ACADEMICOS</h4>
                    <table class="table table-sm table-bordered table-striped" border="1">
                        <thead>
                            <tr>
                                <th>Grado</th>
                                <th>Condición</th>
                                <th>Nombre institucion</th>
                                <th>Fecha conclusion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="gradocademico in listadoGradosAcademicos">
                                <td>{{gradocademico.grado}}</td>
                                <td>{{gradocademico.condicion}}</td>
                                <td>{{gradocademico.nombreinstitucion}}</td>
                                <td>{{gradocademico.fechaconclusion}}</td>
                            </tr>
                        </tbody>


                    </table>
                </div>

                <div class="col-md-12 order-md-1">
                    <h4 class="mb-3">GRADOS ACADEMICOS</h4>
                    <table class="table table-sm table-bordered table-striped" border="1">
                        <thead>
                            <tr>
                                <th>Grado</th>
                                <th>Condición</th>
                                <th>Nombre institucion</th>
                                <th>Fecha conclusion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="gradocademico in listadoGradosAcademicos">
                                <td>{{gradocademico.grado}}</td>
                                <td>{{gradocademico.condicion}}</td>
                                <td>{{gradocademico.nombreinstitucion}}</td>
                                <td>{{gradocademico.fechaconclusion}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>


                <div class="col-md-12 order-md-1">
                    <h4 class="mb-3">DATOS FAMILIA</h4>
                    <table class="table table-sm table-bordered table-striped" border="1">
                        <thead>
                            <tr>
                                <th>AP PATERNO CONYUGUE</th>
                                <th>AP MATERNO CONYUGUE</th>
                                <th>NOMBRES</th>
                                <th>DNI</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{datosfamilia.appatconyugue}}</td>
                                <td>{{datosfamilia.apmatconyugue}}</td>
                                <td>{{datosfamilia.nombresconyugue}}</td>
                                <td>{{datosfamilia.dniconyugue}}</td>
                            </tr>
                        </tbody>

                        <thead>
                            <tr>
                                <th>FECHA NAC. CONYUGUE</th>
                                <th>CELULAR CONYUGE </th>
                                <th>NOMBRE EMERGENCIA</th>
                                <th>CEL EMERGENCIA</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{datosfamilia.fechanacimiconyugue}}</td>
                                <td>{{datosfamilia.celularconyugue}}</td>
                                <td>{{datosfamilia.nombreemergencia}}</td>
                                <td>{{datosfamilia.celularemergencia}}</td>
                            </tr>
                        </tbody>
                    </table>
                    <!--DATOS HIJOS-->
                    <p>DATOS HIJOS</p>
                    <table class="table table-sm table-bordered table-striped" border="1">
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
                                <td>{{datohijo.dnihijo}}</td>
                                <td>{{datohijo.appathijo}}</td>
                                <td>{{datohijo.apmathijo}}</td>
                                <td>{{datohijo.nombreshijo}}</td>
                                <td>{{datohijo.fechanachijo}}</td>
                                <td>{{datohijo.sexo}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>


            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary">Imprimir</button>
            </div>
        </div>
    </div>
</div>