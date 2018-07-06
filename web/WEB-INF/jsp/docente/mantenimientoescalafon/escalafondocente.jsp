<%-- 
    Document   : escalafondocente
    Created on : 09/03/2018, 01:35:15 PM
    Author     : Eder-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item active" aria-current="page">Escalafón Docente</li>
    </ol>
</nav>

<main role="main" class="col-md-12 ml-sm-auto col-lg-12 pt-3 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom ">
        <h1 class="h2 col-md-12">Escalafón de Docentes</h1>

    </div>

    <div class="table-responsive">
        <div class="form-inline">
            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group mb-2">
                        <label for="IngreseBusqueda" class="sr-only">Ingrese Busqueda</label>
                        <input type="text" readonly class="form-control-plaintext" id="IngreseBusqueda" value="Ingrese su Busqueda:">
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="buscar" class="sr-only">Buscar</label>
                        <input type="search" class="form-control" ng-model="busqueda" >
                    </div>
                </form>

            </div>
        </div>
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th>ID Doc</th>
                    <th>Código</th>
                    <th>DNI</th>
                    <th>Docente</th>
                    <th>Opción 1</th>
                    <th>Opción 2</th>

                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="docente in docentes | filter: busqueda">
                    <td>{{docente.id}}</td>
                    <td>{{docente.codigodocente}}</td>
                    <td>{{docente.empleado.dni}}</td>
                    <td>{{docente.empleado.apellidopaterno}} {{docente.empleado.apellidomaterno}} {{docente.empleado.nombres}}</td>
                    <td><button class="btn btn-success" ng-click="mostrarModalAgregarEscalafon(docente)">Agregar</button></td>
                    <td><a href="#/docente/mantenimientoescalafon/verescalafondocente/{{docente.empleado.id}}" class="btn btn-info">Ver Escalafón</a></td>
                </tr>

            </tbody>
        </table>
    </div>
</main>


<!-- Modal Agregar escalafon -->
<div class="modal fade" id="modalAgregarEscalafon" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelA" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelA">Agregar Escalafon</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form ng-submit="guardarEscalafonDoc(docentec.empleado, escalafondoc)">
                    <div class="row">
                        <div class="col-md-2">
                            <label for="codigo2"><b>Código:</b> {{docentec.codigodocente}}</label>
                        </div>
                        <div class="col-md-3">
                            <label for="dnidoc"><b>DNI:</b> {{docentec.empleado.dni}}</label>
                        </div>
                        <div class="col-md-4">
                            <label for="doc"><b>Docenteo:</b> {{docentec.empleado.apellidopaterno}} {{docentec.empleado.apellidomaterno}} {{docentec.empleado.nombres}}</label>
                        </div>
                    </div>

                    <hr class="mb-4">

                    <div class="row">
                        <!-- <div class="col-md-4 mb-3">
                             <label for="nivelRemuneratDoc">Nivel Remunerativo</label>
                             <select class="custom-select d-block w-100" id="nivelRemuneratDoc" ng-model="escalafonadm." required>
                                 <option value="">Escoger...</option>
                                 <option>SPA</option>
                                 <option>SPB</option>
                                 <option>SPC</option>
                                 <option>SPF</option>
                                 <option>SPE</option>
                                 <option>STA</option>
                                 <option>STB</option>
                                 <option>STC</option>
                                 <option>STE</option>
                                 <option>SAA</option>
                                 <option>SAB</option>
                                 <option>SAC</option>
                                 <option>SAD</option>
                                 <option>SAE</option>
                                 <option>F-1</option>
                                 <option>F-2</option>
                                 <option>F-3</option>
                                 <option>F-4</option>
                             </select>
                             </select>
                             <div class="invalid-feedback">
                                 Por favor selecciona un tipo de nivel remunerativo.
                             </div>
                         </div>-->
                        <div class="col-md-4 mb-3">
                            <label for="resuelveDoc">Resuelve</label>
                            <select class="custom-select d-block w-100" ng-model="escalafondoc.resuelve" id="resuelveDoc" required>
                                <option value="">Escoger...</option>
                                <option>Contratar</option>
                                <option>Otorgar</option>
                                <option>Prorrogar</option>
                                <option>Nombrar</option>
                                <option>Expresar</option>
                                <option>Renovar</option>
                                <option>Constituir</option>
                                <option>Ratificar</option>
                                <option>Autorizar</option>
                                <option>Promover</option>
                                <option>Aprobar</option>
                                <option>Designar</option>
                                <option>Encargar</option>
                                <option>Conceder</option>
                                <option>Modificar</option>
                                <option>Reconstituir</option>
                                <option>Aceptar</option>
                                <option>Declarar</option>
                                <option>Ampliar</option>
                                <option>Desestimar</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un tipo de resuelve.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="cargoDoc">Cargo</label>
                            <select class="custom-select d-block w-100" ng-model="escalafondoc.cargo" id="cargoDoc" required>
                                <option value="">Escoger...</option>
                                <option>Cargo1</option>
                                <option>Cargo2</option>
                                <option>Cargo3</option>
                                <option>Cargo4</option>
                                <option>Cargo5</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un cargo.
                            </div>
                        </div>  

                    </div>  

                    <div class="mb-3">
                        <label for="descripcionDoc">Descripción</label>
                        <div class="input-group">
                            <input type="text" class="form-control" ng-model="escalafondoc.descripcion" id="descripcionDoc" placeholder="" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Por favor ingrese una descripción
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="resolDoc">Resolución</label>
                            <select class="custom-select d-block w-100" ng-model="escalafondoc.resolucion" id="resolDoc" required>
                                <option value="">Escoger...</option>
                                <option>RR</option>
                                <option>RCU</option>
                                <option>TD</option>
                                <option>Otros</option>

                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un tipo de resolución.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="numResolDoc">N° de Resolución</label>
                            <input type="text" class="form-control" ng-model="escalafondoc.numresolucion" id="numResolDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el número de resolución.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="anioResolDoc">Año de Resolución</label>
                            <input type="number" class="form-control" id="anioResolDoc" ng-model="escalafondoc.anioresolucion" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el año de resolución.
                            </div>
                        </div>
                    </div>   

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="delDoc">Del</label>
                            <input type="date" class="form-control" ng-model="escalafondoc.delfecha" id="delDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese inicio de fecha.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="alDoc">Al</label>
                            <input type="date" class="form-control" ng-model="escalafondoc.alfecha" id="alDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese fin de fecha.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="fechaResolDoc">Fecha de Resolución</label>
                            <input type="date" class="form-control" ng-model="escalafondoc.fecharesolucion" id="fechaResolDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese la fecha de la resolución.
                            </div>
                        </div>

                    </div>

                    <br>
                    <center>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button class="btn btn-primary " type="submit">Guardar</button>
                    </center> 
                    <p>{{escalafondoc| json }}</p>
                </form>
            </div>

        </div>
    </div>
</div>