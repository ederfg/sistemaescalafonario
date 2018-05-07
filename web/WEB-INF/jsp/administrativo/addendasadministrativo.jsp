<%-- 
    Document   : addendasadministrativo
    Created on : 12/03/2018, 12:17:36 PM
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
    <li class="breadcrumb-item active" aria-current="page">Addendas administrativo</li>
  </ol>
</nav>

<c:forEach var="adminsirativo" items="${listado}">
   <h1>${adminsirativo.categoriaadministrativo}</h1> 
</c:forEach>

