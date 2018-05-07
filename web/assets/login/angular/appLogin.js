/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


(function () {

    var appLogin = angular.module('loginApp', [
        'ngCookies',
        'loginApp.mainControler'
    ]);


//    //*RUTAS*//
//    appPersonal.config(['$routeProvider', function ($routeProvider) {
//            $routeProvider
//                    .when('/', {
//                        templateUrl: '/sistemaescalafonario/administracion/inicio',
//                        controller: 'inicioCtrl'})
//                    
////                    .when('/tesoreria/pagoadmision', {
////                        templateUrl: '/systemesfa/tesoreria/pagoadmision',
////                        controller: 'tesoreriaPagosCtrl'
////                    })
////                    .when('/tesoreria/reportes', {
////                        templateUrl: '/systemesfa/tesoreria/reportes',
////                        controller: 'tesoreriaReportesCtrl'
////                    })
//                    .otherwise({
//                        redirectTo: '/'
//                    });
//        }]);
})();