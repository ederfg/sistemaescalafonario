/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var appAdmin = angular.module('personalApp.docenteControler', []);


///
appAdmin.controller('mantenimientodocenteCtrl', ['$scope','DocenteServ' ,function ($scope,DocenteServ) {
        $scope.docentes = [];
        
        DocenteServ.listarDocente().then(function () {
            $scope.docentes = DocenteServ.docentes;
        });

        
        console.log("DOCENTE CONTROLLER");
    }]);

appAdmin.controller('docenteregistroCtrl', ['$scope','DocenteServ', function ($scope,DocenteServ) {
        $scope.departamentos = [];
        $scope.provincias = [];
        $scope.distritos = [];
        
            $scope.empleados = [];

            $scope.listadatosacademicos = [];
            $scope.datoacademico = {};
            
            $scope.listagradoacademico = [];
            $scope.gradoacademico = {};

            $scope.listadatoshijos = [];
            $scope.datohijo = {};
            
        
        DocenteServ.listarDepartamento().then(function () {
            $scope.departamentos = DocenteServ.departamentos;
        });

        $scope.listarProvincia = function (departamento) {
            DocenteServ.listarProvincia(departamento).then(function () {
                $scope.provincias = DocenteServ.provincias;
            });
        };

        $scope.listarDistrito = function (provincia) {
            DocenteServ.listarDistrito(provincia).then(function () {
                $scope.distritos = DocenteServ.distritos;
            });
        };
        
        //aqui guardamos emplead,admnistr,datoslaboral,etc.
        $scope.guardarTodoDocente = function (empleado, docente, datoslaboral, listadatosacademicos,listagradoacademico, datosfamilia, listadatoshijos) {
            DocenteServ.guardarTodoDocente(empleado,docente, datoslaboral, listadatosacademicos,listagradoacademico, datosfamilia, listadatoshijos).then(function () {
            });
        };
        
        //agregar a listadodatosacademicos
        $scope.agregardatoacademico = function (datoacademico) {
            $scope.listadatosacademicos.push(datoacademico);
            $scope.datoacademico = {};
        };
        
        //agregar a listadogradosacademicos
        $scope.agregargradoacademico = function (gradoacademico) {
            $scope.listagradoacademico.push(gradoacademico);
            $scope.gradoacademico = {};
        };

        //agregar a listadodatoshijos
        $scope.agregarhijo = function (datohijo) {
            $scope.listadatoshijos.push(datohijo);
            $scope.datohijo = {};
        };
        
        
        
        
        
        
        
        
        
    console.log("AQUI ESTA EL FORMULARIO DE REGISTRO DOCENTES");
    }]);
appAdmin.controller('docentemodificarCtrl', ['$scope', function ($scope) {
    console.log("AQUI ESTA EL FORMULARIO DE MODIFICAR DOCENTES");
    }]);
appAdmin.controller('docenteverCtrl', ['$scope', function ($scope) {
    console.log("AQUI ESTA EL FORMULARIO DE VER DOCENTES");
    }]);
///

appAdmin.controller('docenteescalafonCtrl', ['$scope', function ($scope) {
    console.log("DOCENTE ESCALAFON");
    }]);
appAdmin.controller('docenteescalafonagregarCtrl', ['$scope', function ($scope) {
    console.log("DOCENTE AGREGAR ESCALAFON");
    }]);
appAdmin.controller('docenteescalafonverCtrl', ['$scope', function ($scope) {
    console.log("DOCENTE VER ESCALAFON");
    }]);



///

appAdmin.controller('docentecontratosCtrl', ['$scope', function ($scope) {
    console.log("DOCENTE ESCALAFON");
    }]);

appAdmin.controller('docenteaddendasCtrl', ['$scope', function ($scope) {
    console.log("DOCENTE ESCALAFON");
    }]);