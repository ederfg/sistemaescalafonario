<%-- 
    Document   : verescalafonadministrativo
    Created on : 16/03/2018, 10:29:27 PM
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item"><a href="#/administrativo/mantenimientoescalafon">Escalafón Administrativos</a></li>
        <li class="breadcrumb-item active" aria-current="page">Ver</li>
    </ol>
</nav>

<div class="container">
    <div class="py-5 text-center">
        <i class="material-icons md-48">assignment_ind</i>  
        <h2>VISTA DE ESCALAFON</h2>
        <p class="lead">Datos escalafonarios del administrativo.</p>
    </div>

    <div class="col-md-12 order-md-1">

        <form class="needs-validation" novalidate>
            <div class="row">
                <div class="col-md-2 mb-3">
                    <label for="codigo2">Codigo</label>
                    <input type="text" class="form-control" id="codigo2" placeholder="" ng-model="administrativo.codigoadministrativo" value="101001" disabled required>

                </div>
                <div class="col-md-3 mb-3">
                    <label for="dni">DNI</label>
                    <input type="text" class="form-control" id="dni" placeholder="" ng-model="administrativo.empleado.dni" value="Barrantes" disabled required>

                </div>
                <div class="col-md-3 mb-3">
                    <label for="adm">Administrativo</label>
                    <input type="text" class="form-control" id="adm" placeholder="" ng-model="administrativo.nombrecompleto" value="Del Aguila" disabled required>

                </div>
                 <div class="col-md-2">
                     <label for="agr"> </label>
                     <button class="btn btn-info" ng-click="mostrarModalAgregarEscalafon(administrativo)">Agregar Escalafon</button>

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
                        <th scope="col">Ver</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="escalafonadm in listadoEscalafonAdm">
                        <td>{{escalafonadm.numresolucion}}</td>
                        <td>{{escalafonadm.resuelve}}</td>
                        <td>{{escalafonadm.cargo}}</td>
                        <td>{{escalafonadm.descripcion}}</td>
                        <td>{{escalafonadm.resolucion}}</td>
                        <td>{{escalafonadm.numresolucion}}</td>
                        <td>{{escalafonadm.anioresolucion}}</td>
                        <td>{{escalafonadm.delfecha}}</td>
                        <td>{{escalafonadm.alfecha}}</td>
                        <td>{{escalafonadm.fecharesolucion}}</td>
                        <td><button ng-click="mostrarModalVerEscalafon(escalafonadm)" class="btn btn-info">Ver</button></td>
                        <td><button ng-click="mostrarModalModificarEscalafon(escalafonadm)" class="btn btn-warning">Modificar</button></td>
                        <td><button ng-click="eliminarEscalafon(escalafonadm)" class="btn btn-danger">Eliminar</button></td>
                    </tr>
                </tbody>
            </table>

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
                <form ng-submit="guardarEscalafonAdm(administrativoc.empleado,escalafonadm)">
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
                            <select class="custom-select d-block w-100" ng-model="escalafonadm.resuelve" id="resuelveDoc" required>
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
                            <select class="custom-select d-block w-100" ng-model="escalafonadm.cargo" id="cargoDoc" required>
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
                            <input type="text" class="form-control" ng-model="escalafonadm.descripcion" id="descripcionDoc" placeholder="" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Por favor ingrese una descripción
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="resolDoc">Resolución</label>
                            <select class="custom-select d-block w-100" ng-model="escalafonadm.resolucion" id="resolDoc" required>
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
                            <input type="text" class="form-control" ng-model="escalafonadm.numresolucion" id="numResolDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el número de resolución.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="anioResolDoc">Año de Resolución</label>
                            <input type="number" class="form-control" id="anioResolDoc" ng-model="escalafonadm.anioresolucion" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el año de resolución.
                            </div>
                        </div>
                    </div>   

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="delDoc">Del</label>
                            <input type="date" class="form-control" ng-model="escalafonadm.delfecha" id="delDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese inicio de fecha.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="alDoc">Al</label>
                            <input type="date" class="form-control" ng-model="escalafonadm.alfecha" id="alDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese fin de fecha.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="fechaResolDoc">Fecha de Resolución</label>
                            <input type="date" class="form-control" ng-model="escalafonadm.fecharesolucion" id="fechaResolDoc" placeholder="" value="" required>
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
                    <p>{{escalafonadm | json }}</p>
                </form>
            </div>

        </div>
    </div>
</div>


<!-- Modal Mostrar detalle escalafon -->
<div class="modal fade" id="modalVerEscalafon" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelA" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelA">Detalle Escalafon</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table table-responsive-md table-bordered table-striped" border="1">
                    <thead>
                        <tr>
                            <th>Resuelve</th>
                            <th>Cargo</th>
                            <th>Descripcion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{{escalafondet.resuelve}}</td>
                            <td>{{escalafondet.cargo}}</td>
                            <td>{{escalafondet.descripcion}}</td>
                        </tr>
                    </tbody>
                    <thead>
                        <tr>
                            <th>Resolución</th>
                            <th>Nro Resolución</th>
                            <th>Año Resolución</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{{escalafondet.resolucion}}</td>
                            <td>{{escalafondet.numresolucion}}</td>
                            <td>{{escalafondet.anioresolucion}}</td>
                        </tr>
                    </tbody>
                    <thead>
                        <tr>
                            <th>Del</th>
                            <th>Al</th>
                            <th>Fecha Resolución</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{{escalafondet.delfecha}}</td>
                            <td>{{escalafondet.alfecha}}</td>
                            <td>{{escalafondet.fecharesolucion}}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



<!-- Modal modificar escalafon -->
<div class="modal fade" id="modalModificarEscalafon" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelA" aria-hidden="true">
    <div class=" modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelA">Modificar Escalafon</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form ng-submit="modificarEscalafonAdm(escalafonmod)">
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
                            <select class="custom-select d-block w-100" ng-model="escalafonmod.resuelve" id="resuelveDoc" required>
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
                            <select class="custom-select d-block w-100" ng-model="escalafonmod.cargo" id="cargoDoc" required>
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
                            <input type="text" class="form-control" ng-model="escalafonmod.descripcion" id="descripcionDoc" placeholder="" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Por favor ingrese una descripción
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="resolDoc">Resolución</label>
                            <select class="custom-select d-block w-100" ng-model="escalafonmod.resolucion" id="resolDoc" required>
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
                            <input type="text" class="form-control" ng-model="escalafonmod.numresolucion" id="numResolDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el número de resolución.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="anioResolDoc">Año de Resolución</label>
                            <input type="number" class="form-control" id="anioResolDoc" ng-model="escalafonmod.anioresolucion" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el año de resolución.
                            </div>
                        </div>
                    </div>   

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="delDoc">Del</label>
                            <input type="date" class="form-control" ng-model="escalafonmod.delfecha" id="delDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese inicio de fecha.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="alDoc">Al</label>
                            <input type="date" class="form-control" ng-model="escalafonmod.alfecha" id="alDoc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese fin de fecha.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="fechaResolDoc">Fecha de Resolución</label>
                            <input type="date" class="form-control" ng-model="escalafonmod.fecharesolucion" id="fechaResolDoc" placeholder="" value="" required>
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
                    <p>{{escalafonmod | json }}</p>
                </form>
            </div>

        </div>
    </div>
</div>