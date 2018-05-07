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
                    <input type="text" class="form-control" id="codigo2" placeholder="" value="101001" disabled required>

                </div>
                <div class="col-md-3 mb-3">
                    <label for="apPaterno">Apellido Paterno</label>
                    <input type="text" class="form-control" id="apPaterno" placeholder="" value="Barrantes" disabled required>

                </div>
                <div class="col-md-3 mb-3">
                    <label for="apMaterno">Apellido Materno</label>
                    <input type="text" class="form-control" id="apMaterno" placeholder="" value="Del Aguila" disabled required>

                </div>
                <div class="col-md-4 mb-3">
                    <label for="nombres">Nombres</label>
                    <input type="text" class="form-control" id="nombres" placeholder="" value="Fernando" disabled required>

                </div>  
            </div>


            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">N. Remun.</th>
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
                    <tr>
                        <td>SPB</td>
                        <td>Asignar</td>
                        <td></td>
                        <td>En la escuela de Agronimia</td>
                        <td>RCU</td>
                        <td>087</td>
                        <td>2003</td>
                        <td>03/11/2003</td>
                        <td>06/05/2004</td>
                        <td>01/11/2003</td>
                    </tr>
                    <tr>
                        <td>PRDE</td>
                        <td>Asignar</td>
                        <td>Jefe De Dpto.</td>
                        <td>En la escuela de Agronimia</td>
                        <td>RCU</td>
                        <td>315</td>
                        <td>2008</td>
                        <td>07/04/2008</td>
                        <td>06/04/2009</td>
                        <td>02/04/2008</td>
                    </tr>
                    <tr>
                        <td>PRDE</td>
                        <td>Asignar</td>
                        <td>Jefe De Dpto.</td>
                        <td>En la escuela de Agronimia</td>
                        <td>RCU</td>
                        <td>315</td>
                        <td>2008</td>
                        <td>07/04/2008</td>
                        <td>06/04/2009</td>
                        <td>02/04/2008</td>
                    </tr>
                    <tr>
                        <td>PRDE</td>
                        <td>Asignar</td>
                        <td>Jefe De Dpto.</td>
                        <td>En la escuela de Agronimia</td>
                        <td>RCU</td>
                        <td>315</td>
                        <td>2008</td>
                        <td>07/04/2008</td>
                        <td>06/04/2009</td>
                        <td>02/04/2008</td>
                    </tr>
                    <tr>
                        <td>PRDE</td>
                        <td>Asignar</td>
                        <td>Jefe De Dpto.</td>
                        <td>En la escuela de Agronimia</td>
                        <td>RCU</td>
                        <td>315</td>
                        <td>2008</td>
                        <td>07/04/2008</td>
                        <td>06/04/2009</td>
                        <td>02/04/2008</td>
                    </tr>
                </tbody>
            </table>

        </form>
    </div>


</div>
