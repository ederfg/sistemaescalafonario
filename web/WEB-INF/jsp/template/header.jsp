<%-- 
    Document   : header
    Created on : 09/03/2018, 11:34:43 AM
    Author     : Eder-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#/" >OFICINA DE PERSONAL</a>
<!-- <input class="form-control form-control-dark w-100" type="text" readonly value="USUARIO: nombre usuarios" > -->
<label>BIENVENIDO : <p>{{usuarioC | json}}</p> </label> 
<ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
        <a class="nav-link" ng-click="salir()" href="">Salir</a>
    </li>
</ul>
