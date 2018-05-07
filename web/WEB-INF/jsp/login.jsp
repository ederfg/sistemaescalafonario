<%-- 
    Document   : login
    Created on : 25/02/2018, 01:45:11 PM
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="loginApp" ng-controller="mainCtrl">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/styles/signin.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body class="text-center">
        <form class="form-signin" ng-submit="autenticar(usuario)">
            <i class="material-icons md-48">account_box</i>

            <img class="mb-4" src="" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">OFICINA DE PERSONAL</h1>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="" id="inputEmail" class="form-control" placeholder="USUARIO" required autofocus ng-model="usuario.nombreusuario"><br>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="CONTRASEÑA" required ng-model="usuario.password">
            <hr>
            <div class="alert alert-danger" role="alert" ng-show="mostrarError">
                {{mensaje}}
            </div><br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">INGRESAR</button>
            
            <p class="mt-5 mb-3 text-muted">&copy; 2017-2018 Oficina de Personal </p>
        </form>
    </body>


    <script src="${pageContext.request.contextPath}/assets/login/angular/lib/angular.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/login/angular/lib/angular-cookies.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/assets/login/angular/appLogin.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/login/angular/controladores/mainControler.js" type="text/javascript"></script>
</html>
