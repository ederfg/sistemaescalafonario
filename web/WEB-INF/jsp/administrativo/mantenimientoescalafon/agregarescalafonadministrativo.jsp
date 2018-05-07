<%-- 
    Document   : agregarescalafonadministrativo
    Created on : 16/03/2018, 10:28:33 PM
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item"><a href="#/administrativo/mantenimientoescalafon">Escalafón Administrativos</a></li>
        <li class="breadcrumb-item active" aria-current="page">Agregar</li>
    </ol>
</nav>

<div class="container">
    <div class="py-5 text-center">
        <i class="material-icons md-48">assignment_ind</i>  
        <h2>REGISTRO DE ESCALAFON</h2>
        <p class="lead">Para ingresar un registro eslafonario de un administrativo ingrese su DNI y busque, luego completa los datos que se requieran.</p>
    </div>

    <div class="col-md-12 order-md-1">
        <h4 class="mb-3">DATOS ESCALAFONARIOS DEL ADMINISTRATIVO</h4>
        
        <form class="needs-validation" novalidate>
            <div class="row">
                <div class="col-md-2 mb-3">
                    <label for="codigo2">Código</label>
                    <input type="text" class="form-control" id="codigo2" placeholder="" value="" disabled required>

                </div>
                <div class="col-md-3 mb-3">
                    <label for="apPaterno">Apellido Paterno</label>
                    <input type="text" class="form-control" id="apPaterno" placeholder="" value="" disabled required>

                </div>
                <div class="col-md-3 mb-3">
                    <label for="apMaterno">Apellido Materno</label>
                    <input type="text" class="form-control" id="apMaterno" placeholder="" value="" disabled required>

                </div>
                <div class="col-md-4 mb-3">
                    <label for="nombres">Nombres</label>
                    <input type="text" class="form-control" id="nombres" placeholder="" value="" disabled required>

                </div>  
            </div>

            <hr class="mb-4">

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="nivelRemuneratDoc">Nivel Remunerativo</label>
                    <select class="custom-select d-block w-100" id="nivelRemuneratDoc" required>
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
                </div>
                <div class="col-md-4 mb-3">
                    <label for="resuelveDoc">Resuelve</label>
                    <select class="custom-select d-block w-100" id="resuelveDoc" required>
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
                    <select class="custom-select d-block w-100" id="cargoDoc" required>
                        <option value="">Escoger...</option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                    </select>
                    <div class="invalid-feedback">
                        Por favor selecciona un cargo.
                    </div>
                </div>  

            </div>  

            <div class="mb-3">
                <label for="descripcionDoc">Descripción</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="descripcionDoc" placeholder="" required>
                    <div class="invalid-feedback" style="width: 100%;">
                        Por favor ingrese una descripción
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="resolDoc">Resolución</label>
                    <select class="custom-select d-block w-100" id="resolDoc" required>
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
                    <input type="text" class="form-control" id="numResolDoc" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Es obligatorio ingresar el número de resolución.
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="anioResolDoc">Año de Resolución</label>
                    <input type="text" class="form-control" id="anioResolDoc" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Es obligatorio ingresar el año de resolución.
                    </div>
                </div>
            </div>   

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="delDoc">Del</label>
                    <input type="date" class="form-control" id="delDoc" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Por favor ingrese inicio de fecha.
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="alDoc">Al</label>
                    <input type="date" class="form-control" id="alDoc" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Por favor ingrese fin de fecha.
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="fechaResolDoc">Fecha de Resolución</label>
                    <input type="date" class="form-control" id="fechaResolDoc" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Por favor ingrese la fecha de la resolución.
                    </div>
                </div>

            </div>

            <br>
            <center>
                <button class="btn btn-secondary" type="button">Cancelar</button>
                <button class="btn btn-primary " type="submit">Guardar</button>
            </center>                
        </form>
    </div>

</div>
