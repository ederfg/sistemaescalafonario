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
                <form class="form-inline" >
                    <div class="form-group mb-2">
                        <label for="staticEmail2" class="sr-only">DNI</label>
                        <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="Busqueda por DNI">
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword2" class="sr-only"></label>
                        <input type="text" class="form-control" id="inputPassword2" placeholder="">
                    </div>
                    <button type="submit" class="btn btn-outline-dark mb-2">Buscar</button>
                </form>

            </div>
            <div class="col-md-6">
                <form class="form-inline">
                    <div class="form-group mb-2">
                        <label for="staticEmail2" class="sr-only">Apellido</label>
                        <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="Busqueda por Apellido">
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword2" class="sr-only"></label>
                        <input type="text" class="form-control" id="inputPassword2" placeholder="">
                    </div>
                    <button type="submit" class="btn btn-outline-dark mb-2">Buscar</button>
                </form>

            </div>
        </div>
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th>N°</th>
                    <th>Código</th>
                    <th>DNI</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Opción 1</th>
                    <th>Opción 2</th>
                    <th>Opción 3</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="#/docente/mantenimientoescalafon/agregarescalafondocente" class="btn btn-success">Agregar</a></td>
                    <td><a href="#/docente/mantenimientoescalafon/verescalafondocente" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>

                </tr>
                <tr>
                    <td>2</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>0989</td>
                    <td>47464093</td>
                    <td>Corilla Canchari</td>
                    <td>José</td>
                    <td><a href="" class="btn btn-success">Agregar</td>
                    <td><a href="" class="btn btn-info">ver</a></td>
                    <td><a href="" class="btn btn-danger">Eliminar</td>
                </tr>

            </tbody>
        </table>
    
</main>
