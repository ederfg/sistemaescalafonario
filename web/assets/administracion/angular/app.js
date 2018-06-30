/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


(function () {

    var appPersonal = angular.module('personalApp', [
        'ngRoute','ngCookies',
        'personalApp.mainControler',
        'personalApp.inicioControler',
        'personalApp.docenteControler',
        'personalApp.administrativoControler',
        
        
        'personalApp.administrativoService',
        'personalApp.docenteService'
        
        
    ]);
    
    
    appPersonal.run(["$rootScope", "$cookies", function ($rootScope, $cookies)
        {
            $rootScope.$on('$routeChangeStart', function (event, next, current)
            {
                //$cookies.get('usuario');
                

                if ($cookies.get('usuario') === undefined) {
                    console.log("estamos aqui");
                    //if (next.templateUrl === '/systemesfa/tesoreria/pagoadmision' || next.templateUrl === '/systemesfa/administracion/inicio' || next.templateUrl === '/systemesfa/tesoreria/reportes') {
                        window.location = '/sistemaescalafonario/administracion/login';

                    //}

                }

            });
        }]);


//    //*RUTAS*//
    appPersonal.config(['$routeProvider', function ($routeProvider) {
            $routeProvider
                    .when('/', {
                        templateUrl: '/sistemaescalafonario/administracion/vistainicial',
                        controller: 'inicioCtrl'
                    })
                    //DOCENTE
                    .when('/docente/mantenimiento', {
                        templateUrl: '/sistemaescalafonario/docente/mantenimientodocente',
                        controller: 'mantenimientodocenteCtrl'
                    })
                    .when('/docente/mantenimiento/agregardocente', {
                        templateUrl: '/sistemaescalafonario/docente/mantenimientodocente/registro',
                        controller: 'docenteregistroCtrl'
                    })
                    .when('/docente/mantenimiento/modificardocente/:idempleado', {
                        templateUrl: '/sistemaescalafonario/docente/mantenimientodocente/modificar',
                        controller: 'docentemodificarCtrl'
                    })
                    .when('/docente/mantenimiento/verdocente', {
                        templateUrl: '/sistemaescalafonario/docente/mantenimientodocente/ver',
                        controller: 'docenteverCtrl'
                    })
                    
                    //DOCENTE ESCALAFON
                    .when('/docente/mantenimientoescalafon', {
                        templateUrl: '/sistemaescalafonario/docente/escalafondocente',
                        controller: 'docenteescalafonCtrl'
                    })
                    .when('/docente/mantenimientoescalafon/agregarescalafondocente', {
                        templateUrl: '/sistemaescalafonario/docente/mantenimientoescalafon/agregar',
                        controller: 'docenteescalafonagregarCtrl'
                    })
                     .when('/docente/mantenimientoescalafon/verescalafondocente', {
                        templateUrl: '/sistemaescalafonario/docente/mantenimientoescalafon/ver',
                        controller: 'docenteescalafonverCtrl'
                    })
                    
                    
                    
                    
                    //
                    .when('/docente/contratos', {
                        templateUrl: '/sistemaescalafonario/docente/contratosdocente',
                        controller: 'docentecontratosCtrl'
                    })
                    .when('/docente/addendas', {
                        templateUrl: '/sistemaescalafonario/docente/addendasdocente',
                        controller: 'docenteaddendasCtrl'
                    })
                    
                    
                    //ADMINISTRATIVO
                    .when('/administrativo/mantenimiento', {
                        templateUrl: '/sistemaescalafonario/administrativo/mantenimientoadministrativo',
                        controller: 'mantenimientoadministrativoCtrl'
                    })
                    
                    .when('/administrativo/mantenimiento/agregaradministrativo', {
                        templateUrl: '/sistemaescalafonario/administrativo/mantenimientoadministrativo/registro',
                        controller: 'administrativoregistroCtrl'
                    })
                    
                    .when('/administrativo/mantenimiento/modificaradministrativo/:idempleado', {
                        templateUrl: '/sistemaescalafonario/administrativo/mantenimientoadministrativo/modificar',
                        controller: 'administrativomodificarCtrl'
                    })
                    
                    .when('/administrativo/mantenimiento/veradministrativo', {
                        templateUrl: '/sistemaescalafonario/administrativo/mantenimientoadministrativo/ver',
                        controller: 'administrativoverCtrl'
                    })
                    
                    //ADMINISTRATIVO ESCALAFON
                    .when('/administrativo/mantenimientoescalafon', {
                        templateUrl: '/sistemaescalafonario/administrativo/escalafonadministrativo',
                        controller: 'administrativoescalafonCtrl'
                    })
                    .when('/administrativo/mantenimientoescalafon/verescalafonadministrativo/:idempleado', {
                        templateUrl: '/sistemaescalafonario/administrativo/mantenimientoescalafon/ver',
                        controller: 'administrativoescalafonverCtrl'
                    })
                    
                    
                    
                    .when('/administrativo/mantenimientoescalafon/agregarescalafonadministrativo', {
                        templateUrl: '/sistemaescalafonario/administrativo/mantenimientoescalafon/agregar',
                        controller: 'administrativoescalafonagregarCtrl'
                    })
                     
                    
                    
                    
                    //
                    
                    .when('/administrativo/registro', {
                        templateUrl: '/sistemaescalafonario/administrativo/registroadministrativo',
                        controller: 'administrativoregistroCtrl'
                    })
                    .when('/administrativo/escalafon', {
                        templateUrl: '/sistemaescalafonario/administrativo/escalafonadministrativo',
                        controller: 'administrativoescalafonCtrl'
                    })
                    .when('/administrativo/contratos', {
                        templateUrl: '/sistemaescalafonario/administrativo/contratosadministrativo',
                        controller: 'administrativocontratosCtrl'
                    })
                    .when('/administrativo/addendas', {
                        templateUrl: '/sistemaescalafonario/administrativo/addendasadministrativo',
                        controller: 'administrativoaddendasCtrl'
                    })
                    
                    .otherwise({
                        redirectTo: '/'
                    });
        }]);
})();