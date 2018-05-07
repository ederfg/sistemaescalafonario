/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var appLogin = angular.module('loginApp.mainControler', []);

appLogin.controller('mainCtrl', ['$scope', '$cookies', function ($scope, $cookies) {


        console.log("estamos en login main controler");

        $scope.mensaje = "";
        $scope.mostrarError = false;


        $scope.usuarioA = {
            nombreusuario: "admin",
            password: "1234"
        };

        $scope.usuarioB = {
            nombreusuario: "usuario",
            password: "usuario"
        };


        $scope.autenticar = function (usuario) {
            console.log(usuario);
            if (usuario.nombreusuario === $scope.usuarioA.nombreusuario && usuario.password === $scope.usuarioA.password) {
                $cookies.put('usuario', usuario.nombreusuario);
                window.location = '/sistemaescalafonario/administracion/';
                console.log("se conecto correctamente");
            } else if (usuario.nombreusuario === $scope.usuarioB.nombreusuario && usuario.password === $scope.usuarioB.password) {
                $cookies.put('usuario', usuario.nombreusuario);
                window.location = '/sistemaescalafonario/administracion/';
                console.log("se conecto correctamente");
            } else {
                $scope.mostrarError = true;
                $scope.mensaje = "Usuario/Contraseña incorrectos";
            }

        };



//        $scope.salir = function () {
//            $cookies.remove('usuario');
//            $cookies.remove('estaConectado');
//            window.location = '../administracion/login';
//        };


    }]);

