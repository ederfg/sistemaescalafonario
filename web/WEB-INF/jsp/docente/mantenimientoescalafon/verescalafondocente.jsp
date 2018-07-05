<%-- 
    Document   : verescalafondocente
    Created on : 15/03/2018, 08:34:20 PM
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item"><a href="#/docente/mantenimientoescalafon">Escalafón Docente</a></li>
        <li class="breadcrumb-item active" aria-current="page">Ver</li>
    </ol>
</nav>

<div class="container">
    <div class="py-5 text-center">
        <i class="material-icons md-48">assignment_ind</i>  
        <h2>ESCALAFON</h2>
        <p class="lead">Datos escalafonarios del docente.</p>
    </div>

    <div class="col-md-12 order-md-1">

        <form class="needs-validation" novalidate>
            <div class="form-group row">
                <label for="codigo2" class="col-sm-1 col-form-label"><b>Código:</b> </label>
                <div class="col-sm-1">
                    <input type="text" readonly class="form-control-plaintext" id="codigo2" ng-model="docente.codigodocente" value="email@example.com">
                </div>
                <label for="dni" class="col-sm-1 col-form-label"><b>DNI:</b></label>
                <div class="col-sm-2">
                    <input type="text" readonly class="form-control-plaintext" id="dni" ng-model="docente.empleado.dni" value="email@example.com">
                </div>
                <label for="doc" class="col-sm-1 col-form-label"><b>Docente:</b></label>
                <div class="col-sm-4">
                    <input type="text" readonly class="form-control-plaintext" id="doc" ng-model="docente.nombrecompleto" value="email@example.com">
                </div>
                <div class="col-md-2">                   
                    <button class="btn btn-info" ng-click="mostrarModalAgregarEscalafon(docente)">Agregar</button>
                </div>

            </div>
            <!--
            <div class="form-group row">
                <div class="col-md-2 mb-3">
                    <label for="codigo2" ><b>Código:</b> </label> 

                    <input type="text" class="form-control" id="codigo2" placeholder="" ng-model="docente.codigodocente" value="101001" disabled required>

                </div>
                <div class="col-md-2 mb-3">
                    <label for="dni"><b>DNI:</b></label>
                    <input type="text" class="form-control" id="dni" placeholder="" ng-model="docente.empleado.dni" value="Barrantes" disabled required>

                </div>
                <div class="col-md-4 mb-3">
                    <label for="doc"><b>Docente:</b></label>
                    <input type="text" class="form-control" id="doc" placeholder="" ng-model="docente.nombrecompleto" value="Del Aguila" disabled required>

                </div>
                <div class="col-md-2">
                    <label for="agr"><b>Escalafón:</b> </label>
                    <button class="btn btn-info" ng-click="mostrarModalAgregarEscalafon(docente)">Agregar</button>

                </div>
            </div> 
            -->

            <div class="table-responsive">
                <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Buscar: </label>
                    <div class="form-group mx-sm-3 mb-2">
                        <input type="search" class="form-control" ng-model="busquedaEsc" >
                    </div>
                </div>
                
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">N. Resol.</th>
                            <th scope="col">Resuelve</th>
                            <th scope="col">Cargo</th>
                            <th scope="col">Descrip.</th>
                            <th scope="col">Resoluc.</th>
                            <th scope="col">N°</th>
                            <th scope="col">Año</th>
                            <th scope="col">Del</th>
                            <th scope="col">Al</th>
                            <th scope="col">Fecha Resoluc.</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="escalafondoc in listadoEscalafonDoc| filter: busquedaEsc">
                            <td>{{escalafondoc.numresolucion}}</td>
                            <td>{{escalafondoc.resuelve}}</td>
                            <td>{{escalafondoc.cargo}}</td>
                            <td>{{escalafondoc.descripcion}}</td>
                            <td>{{escalafondoc.resolucion}}</td>
                            <td>{{escalafondoc.numresolucion}}</td>
                            <td>{{escalafondoc.anioresolucion}}</td>
                            <td>{{escalafondoc.delfecha}}</td>
                            <td>{{escalafondoc.alfecha}}</td>
                            <td>{{escalafondoc.fecharesolucion}}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>


</div>


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
                        <div class="col-md-3 mb-3">
                            <label for="resuelveDoc">Resuelve</label>
                            <select class="custom-select d-block w-100" ng-model="escalafondoc.resuelve" id="resuelveDoc" required>
                                <option value="">Escoger...</option>
                                <option>Contratar</option>
                                <option>Otorgar</option>
                                <option>Prorrogar</option>
                                <option>Nombrar</option>
                                <option>Expresar</option>
                                <option>Renovar</option>
                                <option>Rectificar</option>
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
                        <div class="col-md-3 mb-3">
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
                        <div class="col-md-6 mb-3">
                            <label for="descripcionDoc">Descripción</label>
                            <div class="input-group">
                                <input type="text" class="form-control" ng-model="escalafondoc.descripcion" id="descripcionDoc" placeholder="" required>
                                <div class="invalid-feedback" style="width: 100%;">
                                    Por favor ingrese una descripción
                                </div>
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