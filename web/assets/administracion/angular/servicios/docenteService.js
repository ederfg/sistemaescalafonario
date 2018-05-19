/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var appPersonal = angular.module('personalApp.docenteService', []);

appPersonal.factory('DocenteServ', ['$http', '$q', function ($http, $q) {

        var self = {
            //departamento, provincias, distritos
            'departamentos': [],
            'provincias': [],
            'distritos': [],

            'docentes': [],
            'empleadoGuardado': {},
            'empleados': [],

            listarDepartamento: function () {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/docente/listadodepartamento')
                        .success(function (respuesta) {
                            console.log(respuesta);
                            self.departamentos = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            listarProvincia: function (departamento) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/listadoprovincia', departamento)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            self.provincias = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            listarDistrito: function (provincia) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/listadodistrito', provincia)
                        .success(function (respuesta) {
                            // console.log(respuesta);
                            self.distritos = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            guardarTodoDocente: function (empleado, docente, datoslaboral, listadatosacademicos, listagradoacademico, datosfamilia, listadatoshijos) {
                var d = $q.defer();
                var df = $q.defer();
                //var listadoda = [];
                $http.post('/sistemaescalafonario/docente/guardarempleado', empleado)
                        .success(function (respuesta) {
                            docente.empleado = respuesta;
                            datoslaboral.empleado = respuesta;
                            for (var i = 0; i < listadatosacademicos.length; i++) { //Agregamos el empleado a cada dato academico
                                listadatosacademicos[i].empleado = respuesta;
                            }
                            for (var i = 0; i < listagradoacademico.length; i++) { //Agregamos el empleado a cada grado academico
                                listagradoacademico[i].empleado = respuesta;
                            }
                            datosfamilia.empleado = respuesta;

                            d.resolve();
                            self.guardarDocente(docente); // aqui guardardamos docente
                            self.guardarDatosLaboral(datoslaboral); // aqui guardar datos laboral
                            //Se reccorre y se guardar los datos academicos
                            for (var i = 0; i < listadatosacademicos.length; i++) {
                                self.guardarDatosAcademicos(listadatosacademicos[i]);
                            }
                            for (var i = 0; i < listagradoacademico.length; i++) {
                                self.guardarGradoAcademico(listagradoacademico[i]);
                            }

                            //Guardar datos familia
                            $http.post('/sistemaescalafonario/docente/guardardatosfamilia', datosfamilia)
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

            guardarDocente: function (docente) {
                //console.log(administrativo.empleado);
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/guardardocente', docente)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosLaboral: function (datoslaboral) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/guardardatoslaboral', datoslaboral)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosAcademicos: function (datosacademicos) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/guardardatosacademicos', datosacademicos)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },
            guardarGradoAcademico: function (gradoacademico) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/guardargradoacademico', gradoacademico)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosFamilia: function (datosfamilia) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/guardardatosfamilia', datosfamilia)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            guardarDatosHijo: function (datoshijo) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/docente/guardardatoshijo', datoshijo)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve();
                        });
                return d.promise;
            },

            listarDocente: function () {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/docente/listadodocentes')
                        .success(function (respuesta) {
                            console.log(respuesta);
                            self.docentes = respuesta;
                            d.resolve();
                        });
                return d.promise;
            },

            listarEmpleado: function () {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/docente/listempleado')
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