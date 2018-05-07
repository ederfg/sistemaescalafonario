<%-- 
    Document   : menu
    Created on : 09/03/2018, 11:34:55 AM
    Author     : Eder-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="sidebar-sticky">
    <div id="accordion">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span data-feather="users"></span>  DOCENTES
                    </button>
                </h5>
            </div>

            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <a class="nav-link" href="#/docente/mantenimiento">
                    <span data-feather="file-text"></span> Registro Docentes
                </a>
                <a class="nav-link" href="#/docente/mantenimientoescalafon">
                    <span data-feather="layers"></span> Escalafon Docentes
                </a>
                <a class="nav-link" href="#/docente/contratos">
                    <span data-feather="file"></span> Contratos Docentes
                </a>
                <a class="nav-link" href="#/docente/addendas">
                    <span data-feather="file"></span> Addendas Docentes
                </a>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingTwo">
                <h5 class="mb-0">
                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        <span data-feather="users"></span> ADMINITRATIVOS
                    </button>
                </h5>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                <a class="nav-link" href="#/administrativo/mantenimiento">
                    <span data-feather="file-text"></span> Registro Administrativos
                </a>
                <a class="nav-link" href="#/administrativo/escalafon">
                    <span data-feather="layers"></span> Escalafon Administrativos
                </a>
                <a class="nav-link" href="#/administrativo/contratos">
                    <span data-feather="file"></span> Contratos Administrativos
                </a>
                <a class="nav-link" href="#/administrativo/addendas">
                    <span data-feather="file"></span> Addendas Administrativos
                </a>  
            </div>
            
        </div>
        
        
        
    </div>

</div>