<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="personalApp" ng-controller="mainCtrl">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/styles/escalafon.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0" ng-include="'/sistemaescalafonario/administracion/header'">
        
    </nav>

    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar" ng-include="'/sistemaescalafonario/administracion/menu'">
                
            </nav>
            
            
            
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4" ng-view>
                
                
            </main>
            
               
        </div>
        
        <footer class="text-muted" ng-include="'/sistemaescalafonario/administracion/footer'">
            
        </footer>
    </div>


    <script src="${pageContext.request.contextPath}/assets/administracion/angular/lib/angular.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/lib/angular-route.min.js" type="text/javascript"></script>
    


    <script src="${pageContext.request.contextPath}/assets/administracion/angular/app.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/controladores/mainControler.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/lib/angular-cookies.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/controladores/inicioCtrl.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/controladores/docenteCtrl.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/controladores/administrativoCtrl.js" type="text/javascript"></script>
    
    
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/servicios/administrativoService.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/administracion/angular/servicios/docenteService.js" type="text/javascript"></script>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/popper.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
        feather.replace()
    </script>
    
</body>

</html>

