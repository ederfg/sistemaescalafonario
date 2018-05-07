/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var appPersonal = angular.module('personalApp.administrativoService', []);

appPersonal.factory('AdministrativoServ', ['$http', '$q', function ($http, $q) {

        var self = {

            //departamento, provincias, distritos
            'departamentos': [],
            'provincias': [],
            'distritos': [],

            'administrativos': [],
            'empleadoGuardado': {},
            'empleados': [],

            listarDepartamento: function () {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/listadodepartamento')
                        .success(function (respuesta) {
                            console.log(respuesta);
                            self.departamentos = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            listarProvincia: function (departamento) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/listadoprovincia', departamento)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            self.provincias = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            listarDistrito: function (provincia) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/listadodistrito', provincia)
                        .success(function (respuesta) {
                            // console.log(respuesta);
                            self.distritos = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            guardarTodoAdministrativo: function (empleado, administrativo, datoslaboral, listadatosacademicos, datosfamilia, listadatoshijos) {
                var d = $q.defer();
                var df = $q.defer();
                //var listadoda = [];
                $http.post('/sistemaescalafonario/administrativo/guardarempleado', empleado)
                        .success(function (respuesta) {
                            administrativo.empleado = respuesta;
                            datoslaboral.empleado = respuesta;
                            for (var i = 0; i < listadatosacademicos.length; i++) { //Agregamos el empleado a cada dato academico
                                listadatosacademicos[i].empleado = respuesta;
                            }
                            datosfamilia.empleado = respuesta;

                            d.resolve();
                            self.guardarAdministrativo(administrativo); // aqui guardardamos admnistrativo
                            self.guardarDatosLaboral(datoslaboral); // aqui guardar datos laboral
                            //Se reccorre y se guardar los datos academicos
                            for (var i = 0; i < listadatosacademicos.length; i++) {
                                self.guardarDatosAcademicos(listadatosacademicos[i]);
                            }

                            //Guardar datos familia
                            $http.post('/sistemaescalafonario/administrativo/guardardatosfamilia', datosfamilia)
                                    .success(function (respuestadf) {
                                        // Asignamos la familia a cada hijo
                                        for (var i = 0; i < listadatoshijos.length; i++) { //Agregamos el empleado a cada dato academico
                                            listadatoshijos[i].datosfamilia = respuestadf;
                                        }
                                        df.resolve();
                                        // Recorremos y guardarmos cada hijo
                                        for (var i = 0; i < listadatoshijos.length; i++) {
                                            self.guardarDatosHijo(listadatoshijos[i]);
                                        }
                                    });

                        });


                return d.promise;
            },

            guardarAdministrativo: function (administrativo) {
                //console.log(administrativo.empleado);
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/guardaradministrativo', administrativo)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosLaboral: function (datoslaboral) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/guardardatoslaboral', datoslaboral)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosAcademicos: function (datosacademicos) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/guardardatosacademicos', datosacademicos)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosFamilia: function (datosfamilia) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/guardardatosfamilia', datosfamilia)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosHijo: function (datoshijo) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/guardardatoshijo', datoshijo)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            listarAdministrativo: function () {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/listadoadministrativos')
                        .success(function (respuesta) {
                            console.log(respuesta);
                            self.administrativos = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            listarEmpleado: function () {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/listempleado')
                        .success(function (respuesta) {
                            console.log(respuesta);
                            self.empleados = respuesta;
                            d.resolve();
                        });
                return d.promise;
            }





        };
        return self;
    }]);
