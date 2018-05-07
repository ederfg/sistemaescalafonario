/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var appAdmin = angular.module('personalApp.administrativoControler', []);

///

appAdmin.controller('mantenimientoadministrativoCtrl', ['$scope', 'AdministrativoServ', function ($scope, AdministrativoServ) {



        $scope.administrativos = [];



        AdministrativoServ.listarAdministrativo().then(function () {
            $scope.administrativos = AdministrativoServ.administrativos;
        });

        console.log("ADMINISTRATIVO CONTROLLER");
    }]);

appAdmin.controller('administrativoregistroCtrl', ['$scope', 'AdministrativoServ', function ($scope, AdministrativoServ) {

        $scope.departamentos = [];
        $scope.provincias = [];
        $scope.distritos = [];

        $scope.empleados = [];
        
        $scope.listadatosacademicos = [];
        $scope.datoacademico = {};
        
        $scope.listadatoshijos = [];
        $scope.datohijo = {};

        AdministrativoServ.listarDepartamento().then(function () {
            $scope.departamentos = AdministrativoServ.departamentos;
        });

        $scope.listarProvincia = function (departamento) {
            AdministrativoServ.listarProvincia(departamento).then(function () {
                $scope.provincias = AdministrativoServ.provincias;
            });
        };

        $scope.listarDistrito = function (provincia) {
            AdministrativoServ.listarDistrito(provincia).then(function () {
                $scope.distritos = AdministrativoServ.distritos;
            });
        };

        //aqui guardamos emplead,admnistr,datoslaboral,etc.
        $scope.guardarTodoAdministrativo = function (empleado, administrativo, datoslaboral, listadatosacademicos, datosfamilia, listadatoshijos) {
            AdministrativoServ.guardarTodoAdministrativo(empleado,administrativo, datoslaboral, listadatosacademicos, datosfamilia, listadatoshijos).then(function () {
            });
        };
        
        //agregar a listadodatosacademicos
        $scope.agregardatoacademico = function (datoacademico) {
            $scope.listadatosacademicos.push(datoacademico);
            $scope.datoacademico = {};
        };

        //agregar a listadodatoshijos
        $scope.agregarhijo = function (datohijo) {
            $scope.listadatoshijos.push(datohijo);
            $scope.datohijo = {};
        };


        console.log("AQUI ESTA EL FORMULARIO DE REGISTRO ADMINISTRATIVOS");
    }]);

appAdmin.controller('administrativomodificarCtrl', ['$scope', function ($scope) {
        console.log("AQUI ESTA EL FORMULARIO DE MODIFICAR ADMINISTRATIVOS");
    }]);

appAdmin.controller('administrativoverCtrl', ['$scope', function ($scope) {
        console.log("AQUI ESTA EL FORMULARIO DE VER ADMINISTRATIVOS");
    }]);

///

appAdmin.controller('administrativoescalafonCtrl', ['$scope', function ($scope) {
        console.log("administrativo ESCALAFON");
    }]);
appAdmin.controller('administrativoescalafonagregarCtrl', ['$scope', function ($scope) {
        console.log("administrativo AGREGAR ESCALAFON");
    }]);
appAdmin.controller('administrativoescalafonverCtrl', ['$scope', function ($scope) {
        console.log("administrativo VER ESCALAFON");
    }]);

///

//appAdmin.controller('administrativoregistroCtrl', ['$scope',  function ($scope) {
//    console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
//    }]);


appAdmin.controller('administrativoescalafonCtrl', ['$scope', function ($scope) {
        console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
    }]);
appAdmin.controller('administrativocontratosCtrl', ['$scope', function ($scope) {
        console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
    }]);
appAdmin.controller('administrativoaddendasCtrl', ['$scope', function ($scope) {
        console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
    }]);

///
