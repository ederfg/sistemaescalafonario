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

            guardarTodoAdministrativo: function (empleado, administrativo, datoslaboral, listadatosacademicos,listagradosacademicos, datosfamilia, listadatoshijos) {
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
                            for (var i = 0; i < listagradosacademicos.length; i++) { //Agregamos el empleado a cada grado academico
                                listagradosacademicos[i].empleado = respuesta;
                            }
                            datosfamilia.empleado = respuesta;

                            d.resolve();
                            self.guardarAdministrativo(administrativo); // aqui guardardamos admnistrativo
                            self.guardarDatosLaboral(datoslaboral); // aqui guardar datos laboral
                            //Se reccorre y se guardar los datos academicos
                            for (var i = 0; i < listadatosacademicos.length; i++) {
                                self.guardarDatosAcademicos(listadatosacademicos[i]);
                            }
                            //Se reccorre y se guardar los grados academicos
                            for (var i = 0; i < listagradosacademicos.length; i++) {
                                self.guardarGradosAcademicos(listagradosacademicos[i]);
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
            
            guardarGradosAcademicos: function (gradosacademicos) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/guardargradosacademicos', gradosacademicos)
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
            },

            //OBTENER DATOS DEL ADMINSITRATIVO Y ACTUALIZAR
            obtenerDatosPersonales: function (idempleado) {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/obtenerdatospersonales/?idempleado='+idempleado)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            actualizarDatosPersonales: function (empleado) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/actualizardatospersonales',empleado)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            obtenerDatosAdministrativo: function (idempleado) {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/obtenerdatosadministrativo/?idempleado='+idempleado)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            actualizarDatosAdministrativo: function (administrativo) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/actualizardatosadministrativo',administrativo)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            obtenerDatosLaboral: function (idempleado) {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/obtenerdatoslaboral/?idempleado='+idempleado)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            actualizarDatosLaboral: function (datoslaboral) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/actualizardatoslaboral',datoslaboral)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            obtenerDatosAcademicos: function (idempleado) {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/obtenerdatosacademicos?idempleado='+idempleado)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            actualizarDatosAcademicos: function (datosacademicos) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/actualizardatosacademicos',datosacademicos)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            obtenerGradosAcademicos: function (idempleado) {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/obtenergradosacademicos?idempleado='+idempleado)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            actualizarGradoAcademico: function (gradoacademico) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/actualizargradoacademico',gradoacademico)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            obtenerDatosFamilia: function (idempleado) {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/obtenerdatosfamilia?idempleado='+idempleado)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            actualizarDatosFamilia: function (datosfamilia) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/actualizardatosfamilia',datosfamilia)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            obtenerDatosHijos: function (idfamilia) {
                var d = $q.defer();
                $http.get('/sistemaescalafonario/administrativo/obtenerdatoshijos?idfamilia='+idfamilia)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            },
            actualizarDatosHijos: function (datoshijos) {
                var d = $q.defer();
                $http.post('/sistemaescalafonario/administrativo/actualizardatoshijos',datoshijos)
                        .success(function (respuesta) {
                            console.log(respuesta);
                            //self.empleados = respuesta;
                            d.resolve(respuesta);
                        });
                return d.promise;    
            }
            
            





        };
        return self;
    }]);
