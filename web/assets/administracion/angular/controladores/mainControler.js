/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var appAdmin = angular.module('personalApp.mainControler', []);

appAdmin.controller('mainCtrl', ['$scope', '$cookies', function ($scope, $cookies) {


        console.log("estamos en main controler");
        
        $scope.usuarioC = $cookies.get('usuario');

        console.log($scope.usuarioC);

        $scope.salir = function () {
            $cookies.remove('usuario');
            window.location = '../administracion/login';
        };


    }]);

