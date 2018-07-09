/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var appAdmin = angular.module('personalApp.docenteControler', []);


///
appAdmin.controller('mantenimientodocenteCtrl', ['$scope', 'DocenteServ', '$timeout', function ($scope, DocenteServ, $timeout) {
        $scope.docentes = [];
        
        $scope.empleado = {};
        $scope.docente = {};
        $scope.datoslaboral = {};
        $scope.listadoDatosAcademicos = [];
        $scope.listadoGradosAcademicos = [];
        $scope.datosfamilia = {};
        $scope.listadodatoshijos = [];
        
        $scope.listarDocente = function () {
            DocenteServ.listarDocente().then(function () {
                $scope.docentes = DocenteServ.docentes;
            });
        };
        $scope.listarDocente();
        
        $scope.verDetalleDocente = function (idempleado) {
            console.log("El id del empleado es: " + idempleado);
            // DATOS PERSONALES
            DocenteServ.obtenerDatosPersonales(idempleado).then(function (respuesta) {
                $scope.empleado = respuesta;

                if (respuesta.mayoringreso === true) {
                    $scope.empleado.mayoringreso = 'SI';
                } else {
                    $scope.empleado.mayoringreso = 'NO';
                }

                if (respuesta.afiliacionsindicato === true) {
                    $scope.empleado.afiliacionsindicato = 'SI';
                } else {
                    $scope.empleado.afiliacionsindicato = 'NO';
                }
            });
            //DATOS DOCENTE
            DocenteServ.obtenerDatosDocente(idempleado).then(function (respuesta) {
                $scope.docente = respuesta;
            });
            //DATOS LABORAL
            DocenteServ.obtenerDatosLaboral(idempleado).then(function (respuesta) {
                $scope.datoslaboral = respuesta;
            });
            //DATOS ACADEMICOS
            DocenteServ.obtenerDatosAcademicos(idempleado).then(function (respuesta) {
                $scope.listadoDatosAcademicos = respuesta;
            });
            //GRADOS ACADEMICOS
            DocenteServ.obtenerGradosAcademicos(idempleado).then(function (respuesta) {
                $scope.listadoGradosAcademicos = respuesta;
            });
            //DATOS FAMILIA
            DocenteServ.obtenerDatosFamilia(idempleado).then(function (respuestadf) {
                $scope.datosfamilia = respuestadf;
                DocenteServ.obtenerDatosHijos($scope.datosfamilia.id).then(function (respuestadfh) {
                    $scope.listadodatoshijos = respuestadfh;
                    for (var i = 0; i < respuestadfh.length; i++) {
                        $scope.listadodatoshijos[i].fechanachijo = new Date(respuestadfh[i].fechanachijo);
                    }
                });
            });

        };
        
        $scope.eliminarDocente = function (idempleado) {
            swal({                                          //libreria que te permite trabajar con alertas
                title: "Estas seguro de eliminar el Docente?",
                text: "texto alternativo",
                icon: "warning",
                buttons: true,
                dangerMode: true
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            /*Llegamos aquí si hace clic en Ok*/
                    
                            
                    
                            $timeout(function () {
                                console.log("entra timeout");
                                DocenteServ.eliminarEmpleado(idempleado).then(function (respuesta) {
                                    if (respuesta === 1) {
                                        swal("Eliminado correctamente!", "...", "success");
                                    } else {
                                        swal("Ocurrió un error al aliminar!", "...", "error");
                                    }
                                });
                            }, 3000);

                            //Eliminando docente
                            DocenteServ.obtenerDatosDocente(idempleado).then(function (respuesta) {
                                $scope.docente = respuesta;
                                console.log($scope.docente);
                                if ($scope.docente !== '') {
                                    //console.log("dentro del if "+$scope.administrativo);
                                    DocenteServ.eliminarDocente($scope.docente.id).then(function (respuesta) {
                                        console.log("dentro del servicio");
                                        if (respuesta === 1) {
                                            console.log("Se elimino el docente del idempleado: " + idempleado);
                                            $scope.listarDocente();
                                        } else {
                                            console.log("No se elimino el docente");
                                        }
                                    });
                                } else {
                                    console.log("No existe registro de docente para el idempleado: " + idempleado);
                                }
                            });

                            //Eliminando Datos laboral tenga o no tenga
                            DocenteServ.obtenerDatosLaboral(idempleado).then(function (respuesta) {
                                $scope.datoslaboral = respuesta;
                                if ($scope.datoslaboral !== '') {
                                    console.log("entra");
                                    DocenteServ.eliminarDatosLaboral(respuesta.id).then(function (respuesta) {
                                        if (respuesta === 1) {
                                            console.log("Se elimino los datos laboral del idempleado: " + idempleado);
                                            $scope.listarDocente();
                                        } else {
                                            console.log("No se elimino el dato laboral");
                                        }
                                    });
                                } else {
                                    console.log("No existe registro del dato laboral para el idempleado: " + idempleado);
                                }
                            });

                            //Eliminando Datos academicos
                            DocenteServ.obtenerDatosAcademicos(idempleado).then(function (respuesta) {
                                $scope.listadoDatosAcademicos = respuesta;
                                if ($scope.listadoDatosAcademicos !== []) {
                                    for (var i = 0; i < $scope.listadoDatosAcademicos.length; i++) {
                                        DocenteServ.eliminarDatoAcademico($scope.listadoDatosAcademicos[i].id).then(function (respuesta) {
                                            if (respuesta === 1) {
                                                console.log("Se elimino dato academico del empleado: " + idempleado);
                                                $scope.listarDocente();
                                            } else {
                                                console.log("No se elimino el dato academico");
                                            }
                                        });
                                    }
                                } else {
                                    console.log("No existe registro del datos academicos para el idempleado: " + idempleado);
                                }
                            });


                            //Eliminando Grado academicos
                            DocenteServ.obtenerGradosAcademicos(idempleado).then(function (respuesta) {
                                $scope.listadoGradosAcademicos = respuesta;
                                if ($scope.listadoGradosAcademicos !== []) {
                                    for (var i = 0; i < $scope.listadoGradosAcademicos.length; i++) {
                                        DocenteServ.eliminarGradoAcademico($scope.listadoGradosAcademicos[i].id).then(function (respuesta) {
                                            if (respuesta === 1) {
                                                console.log("Se elimino grado academico del empleado: " + idempleado);
                                                $scope.listarDocente();
                                            } else {
                                                console.log("No se elimino el grado academico");
                                            }
                                        });
                                    }
                                } else {
                                    console.log("No existe registro del grados academicos para el idempleado: " + idempleado);
                                }
                            });




                            //Eliminando Familia y Datos hijos
                            DocenteServ.obtenerDatosFamilia(idempleado).then(function (respuesta) {
                                $scope.datosfamilia = respuesta;
                                if ($scope.datosfamilia !== '') {
                                    DocenteServ.obtenerDatosHijos($scope.datosfamilia.id).then(function (respuestadfh) {
                                        $scope.listadodatoshijos = respuestadfh;
                                        for (var i = 0; i < $scope.listadodatoshijos.length; i++) {
                                            DocenteServ.eliminarDatoHijo($scope.listadodatoshijos[i].id).then(function (respuesta) {
                                                if (respuesta === 1) {
                                                    console.log("Se elimino el hijo de la familia: " + $scope.datosfamilia.id);
                                                    console.log(i);
                                                    console.log($scope.listadodatoshijos.length);
                                                    if (i === $scope.listadodatoshijos.length) {
                                                        DocenteServ.eliminarFamilia($scope.datosfamilia.id).then(function (respuesta) {
                                                            if (respuesta === 1) {
                                                                console.log("Se elimino la familia del empleado: " + idempleado);
                                                                $scope.listarDocente();
                                                            } else {
                                                                console.log("No se elimino la familia");
                                                            }
                                                        });
                                                    }
                                                    $scope.listarDocente();
                                                } else {
                                                    console.log("No se elimino el hijo");
                                                }
                                            });
                                        }
                                    });
                                } else {
                                    console.log("No existe registro de la familia del empleado: " + idempleado);
                                }
                            });
                            





                            /*  AdministrativoServ.eliminarTodoAdministrativo(idempleado).then(function (respuesta) {
                             if (respuesta === 1) {
                             swal("Se elimino correctamente", {
                             icon: "success"
                             });
                             }
                             });*/

                        } else {

                        }
                    });



        };
        
                    
        
        
        DocenteServ.listarDocente().then(function () {
            $scope.docentes = DocenteServ.docentes;
        });


        console.log("DOCENTE CONTROLLER");
    }]);

appAdmin.controller('docenteregistroCtrl', ['$scope', 'DocenteServ', function ($scope, DocenteServ) {
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
        $scope.guardarTodoDocente = function (empleado, docente, datoslaboral, listadatosacademicos, listagradoacademico, datosfamilia, listadatoshijos) {
            DocenteServ.guardarTodoDocente(empleado, docente, datoslaboral, listadatosacademicos, listagradoacademico, datosfamilia, listadatoshijos).then(function () {
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

appAdmin.controller('docentemodificarCtrl', ['$scope', '$routeParams', 'DocenteServ', function ($scope, $routeParams, DocenteServ) {

        $scope.idempleado = $routeParams.idempleado;

        //ObjetoAmodificar
        $scope.empleado = {};
        $scope.docente = {};

        $scope.departamentos = [];
        $scope.provincias = [];
        $scope.distritos = [];


        //Datos personales   
        $scope.mostrarDatosPersonales = function () {
            $("#modalDatosPersonales").modal();

            DocenteServ.obtenerDatosPersonales($scope.idempleado).then(function (respuesta) {
                $scope.empleado = respuesta;
                $scope.empleado.fechanacimiento = new Date(respuesta.fechanacimiento); //Para dar formato
            });

        };
        $scope.actualizarDatosPersonales = function (empleado) {
            DocenteServ.actualizarDatosPersonales(empleado).then(function (respuesta) {
                if (respuesta === 1) {
                    $("#modalDatosPersonales").modal('hide');
                }
            });
        };

        //Listar Ubigeo
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

        //Datos docente
        $scope.mostrarDatosDocente = function () {
            $("#modalDatosDocente").modal();
            DocenteServ.obtenerDatosDocente($scope.idempleado).then(function (respuesta) {
                $scope.docente = respuesta;
            });
        };

        $scope.actualizarDatosDocente = function (docente) {
            DocenteServ.actualizarDatosDocente(docente).then(function (respuesta) {
                if (respuesta === 1) {
                    $("#modalDatosDocente").modal('hide');
                }
            });
        };

        //Datos Laboral
        $scope.mostrarDatosLaboral = function () {
            $("#modalDatosLaboral").modal();
            DocenteServ.obtenerDatosLaboral($scope.idempleado).then(function (respuesta) {
                $scope.datoslaboral = respuesta;
                $scope.datoslaboral.fechaingresoinst = new Date(respuesta.fechaingresoinst); //Para dar formato
                $scope.datoslaboral.fechacese = new Date(respuesta.fechacese); //Para dar formato
            });
        };
        $scope.actualizarDatosLaboral = function (datoslaboral) {
            DocenteServ.actualizarDatosLaboral(datoslaboral).then(function (respuesta) {
                if (respuesta === 1) {
                    $("#modalDatosLaboral").modal('hide');
                }
            });
        };
        
        //Datos academicos
        $scope.listadoDatosAcademicos = [];
        $scope.mostrarDatosAcademicos = function () {
            $("#modalDatosAcademicos").modal();
            DocenteServ.obtenerDatosAcademicos($scope.idempleado).then(function (respuesta) {
                $scope.listadoDatosAcademicos = respuesta;
            });
        };
        $scope.actualizarDatosAcademicos = function (listadoDatosAcademicos) {
            for (var i = 0; i < listadoDatosAcademicos.length; i++) {
                DocenteServ.actualizarDatosAcademicos(listadoDatosAcademicos[i]).then(function (respuesta) {
                });
            }
            $("#modalDatosAcademicos").modal('hide');
        };
        
        //Grado academicos
        $scope.listadoGradosAcademicos = [];
        $scope.mostrarGradosAcademicos = function () {
            $("#modalGradosAcademicos").modal();
            DocenteServ.obtenerGradosAcademicos($scope.idempleado).then(function (respuesta) {
                $scope.listadoGradosAcademicos = respuesta;
            });
        };
        $scope.actualizarGradosAcademicos = function (listadoGradosAcademicos) {
            for (var i = 0; i < listadoGradosAcademicos.length; i++) {
                DocenteServ.actualizarGradoAcademico(listadoGradosAcademicos[i]).then(function (respuesta) {
                });
            }
            $("#modalGradosAcademicos").modal('hide');
        };
        
        //Datos familia
        $scope.datosfamilia = {};
        $scope.listadodatoshijos = [];
        $scope.mostrarDatosFamilia = function () {
            $("#modalDatosFamilia").modal();
            DocenteServ.obtenerDatosFamilia($scope.idempleado).then(function (respuestadf) {
                $scope.datosfamilia = respuestadf;
                $scope.datosfamilia.fechanacimiconyugue = new Date(respuestadf.fechanacimiconyugue); //Para dar formato
                DocenteServ.obtenerDatosHijos($scope.datosfamilia.id).then(function (respuestadfh) {
                    $scope.listadodatoshijos = respuestadfh;
                    for (var i = 0; i < respuestadfh.length; i++) {
                         $scope.listadodatoshijos[i].fechanachijo = new Date(respuestadfh[i].fechanachijo);
                    }
                });
            });
        };
        
        $scope.actualizarDatosFamilia = function (datosfamilia,listadodatoshijos) {
            DocenteServ.actualizarDatosFamilia(datosfamilia).then(function (respuesta) {
            });
            for (var i = 0; i < listadodatoshijos.length; i++) {
                DocenteServ.actualizarDatosHijos(listadodatoshijos[i]).then(function (respuesta) {
                });
            }
            $("#modalDatosFamilia").modal('hide');
        };
        

        console.log("AQUI ESTA EL FORMULARIO DE MODIFICAR DOCENTES");
    }]);
appAdmin.controller('docenteverCtrl', ['$scope', function ($scope) {
        console.log("AQUI ESTA EL FORMULARIO DE VER DOCENTES");
    }]);
///

appAdmin.controller('docenteescalafonCtrl', ['$scope','DocenteServ', function ($scope, DocenteServ) {
        
        $scope.docentes = [];
        $scope.escalafondoc = {};
        
        $scope.listarDocente = function () {
            DocenteServ.listarDocente().then(function () {
                $scope.docentes = DocenteServ.docentes;
            });
        };
        $scope.listarDocente();
        
        
        /*Objeto para mostrar datos del docente en el modal*/
        $scope.docentec = {};
        /*Mostrar Modal agregar escalafon*/
        $scope.mostrarModalAgregarEscalafon = function (docente) {
            $("#modalAgregarEscalafon").modal();
            $scope.docentec = angular.copy(docente);
        };
        
        $scope.guardarEscalafonDoc = function (empleado, escalafon) {
            escalafon.empleado = empleado;

            if (escalafon.empleado !== {}) {
                DocenteServ.guardarEscalafonDoc(escalafon).then(function (respuesta) {
                    //$scope.administrativo = respuesta;
                });
            } else {
                alert("Empleado no encontrado");
            }
        };
        
        console.log("DOCENTE ESCALAFON");
    }]);
appAdmin.controller('docenteescalafonagregarCtrl', ['$scope', function ($scope) {
        console.log("DOCENTE AGREGAR ESCALAFON");
    }]);

appAdmin.controller('docenteescalafonverCtrl', ['$scope', '$routeParams', 'DocenteServ', function ($scope, $routeParams, DocenteServ) {

        $scope.idempleado = $routeParams.idempleado;
        $scope.docente = {};

        $scope.listadoEscalafonDoc = [];
        
        $scope.escalafondet = {};
        $scope.escalafonmod = {};

        $scope.listarEscalafonDoc = function () {
            DocenteServ.listarEscalafonDoc($scope.idempleado).then(function (respuesta) {
                $scope.listadoEscalafonDoc = respuesta;
            });
        };
        $scope.listarEscalafonDoc();



        DocenteServ.obtenerDatosDocente($scope.idempleado).then(function (respuesta) {
            $scope.docente = respuesta;
            $scope.docente.nombrecompleto = $scope.docente.empleado.apellidopaterno + " " + $scope.docente.empleado.apellidomaterno + " " + $scope.docente.empleado.nombres;
        });

        /*Mostrar Modal agregar escalafon*/
        $scope.mostrarModalAgregarEscalafon = function (docente) {
            $("#modalAgregarEscalafon").modal();
            $scope.docentec = angular.copy(docente);
        };

        $scope.guardarEscalafonDoc = function (empleado, escalafon) {
            escalafon.empleado = empleado;

            if (escalafon.empleado !== {}) {
                DocenteServ.guardarEscalafonDoc(escalafon).then(function (respuesta) {
                    //$scope.administrativo = respuesta;
                    if (respuesta===1) {
                        $("#modalAgregarEscalafon").modal('hide');
                        $scope.listarEscalafonDoc();
                    }
                });
                
            } else {
                alert("Empleado no encontrado");
            }
        };
        
        /*Mostrar Modal det escalafon*/
        $scope.mostrarModalVerEscalafon = function (escalafon) {
            $("#modalVerEscalafon").modal();
            $scope.escalafondet = angular.copy(escalafon);
        };
        
        /*Mostrar Modal modificar escalafon*/
        $scope.mostrarModalModificarEscalafon = function (escalafon) {
            $("#modalModificarEscalafon").modal();
            $scope.escalafonmod = angular.copy(escalafon);
            $scope.escalafonmod.delfecha = new Date(escalafon.delfecha);
            $scope.escalafonmod.alfecha = new Date(escalafon.alfecha);
            $scope.escalafonmod.fecharesolucion = new Date(escalafon.fecharesolucion);
        };
        
        $scope.modificarEscalafonDoc = function (escalafonmod) {
            DocenteServ.modificarEscalafonDoc(escalafonmod).then(function (respuesta) {
                //$scope.administrativo = respuesta;
                if (respuesta === 1) {
                    $("#modalModificarEscalafon").modal('hide');
                    $scope.listarEscalafonDoc();
                }
            });
        };
        
        $scope.eliminarEscalafon = function (escalafon) {
            swal({
                title: "Estas seguro de eliminar el escalafon?",
                text: "...",
                icon: "warning",
                buttons: true,
                dangerMode: true
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            //Eliminando administrativo
                            function eliminaresc() {
                                DocenteServ.eliminarEscalafonDoc(escalafon).then(function (respuesta) {
                                    //$scope.administrativo = respuesta;
                                    if (respuesta === 1) {
                                         swal("Eliminado correctamente!", {
                                            icon: "success",
                                        });
                                        $scope.listarEscalafonDoc();
                                        $scope.listarEscalafonDoc();
                                    }
                                });
                            }
                            ;
                            eliminaresc();

                            /*  async function addAsync() {
                             await  $timeout(function () {
                             eliminaresc();
                             }, 30);
                             await  $timeout(function () {
                             $scope.listarEscalafonAdm();
                             }, 200);
                             }
                             addAsync();*/

                        } else {
                            swal("Casi elimina el registro!", {
                            });
                        }
                    });
        };


        console.log($scope.idempleado);

        console.log("docente VER ESCALAFON");
    }]);




///

appAdmin.controller('docentecontratosCtrl', ['$scope', function ($scope) {
        console.log("DOCENTE ESCALAFON");
    }]);

appAdmin.controller('docenteaddendasCtrl', ['$scope', function ($scope) {
        console.log("DOCENTE ESCALAFON");
    }]);