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
            AdministrativoServ.guardarTodoAdministrativo(empleado, administrativo, datoslaboral, listadatosacademicos, datosfamilia, listadatoshijos).then(function () {
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

appAdmin.controller('administrativomodificarCtrl', ['$scope', '$routeParams', 'AdministrativoServ', function ($scope, $routeParams, AdministrativoServ) {


        $scope.idempleado = $routeParams.idempleado;

        //ObjetoAmodificar
        $scope.empleado = {};
        $scope.administrativo = {};

        $scope.departamentos = [];
        $scope.provincias = [];
        $scope.distritos = [];

        //Datos personal
        $scope.mostrarDatosPersonales = function () {
            $("#modalDatosPersonales").modal();

            AdministrativoServ.obtenerDatosPersonales($scope.idempleado).then(function (respuesta) {
                $scope.empleado = respuesta;
                $scope.empleado.fechanacimiento = new Date(respuesta.fechanacimiento); //Para dar formato
            });
        };

        $scope.actualizarDatosPersonales = function (empleado) {
            AdministrativoServ.actualizarDatosPersonales(empleado).then(function (respuesta) {
                if (respuesta === 1) {
                    $("#modalDatosPersonales").modal('hide');
                }
            });
        };


        //Listar Ubigeo
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

        //Datos administrativo
        $scope.mostrarDatosAdministrativo = function () {
            $("#modalDatosAdministrativo").modal();
            AdministrativoServ.obtenerDatosAdministrativo($scope.idempleado).then(function (respuesta) {
                $scope.administrativo = respuesta;
            });
        };

        $scope.actualizarDatosAdministrativo = function (administrativo) {
            AdministrativoServ.actualizarDatosAdministrativo(administrativo).then(function (respuesta) {
                if (respuesta === 1) {
                    $("#modalDatosAdministrativo").modal('hide');
                }
            });
        };
        
        //Datos Laboral
        $scope.mostrarDatosLaboral = function () {
            $("#modalDatosLaboral").modal();
           AdministrativoServ.obtenerDatosLaboral($scope.idempleado).then(function (respuesta) {
                $scope.datoslaboral = respuesta;
                $scope.datoslaboral.fechaingresoinst = new Date(respuesta.fechaingresoinst); //Para dar formato
                $scope.datoslaboral.fechacese = new Date(respuesta.fechacese); //Para dar formato
            });
        };
        $scope.actualizarDatosLaboral = function (datoslaboral) {
            AdministrativoServ.actualizarDatosLaboral(datoslaboral).then(function (respuesta) {
                if (respuesta === 1) {
                    $("#modalDatosLaboral").modal('hide');
                }
            });
        };



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
