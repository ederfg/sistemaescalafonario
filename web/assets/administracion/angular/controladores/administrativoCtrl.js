/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var appAdmin = angular.module('personalApp.administrativoControler', []);

///

appAdmin.controller('mantenimientoadministrativoCtrl', ['$scope', 'AdministrativoServ', '$timeout', function ($scope, AdministrativoServ, $timeout) {



        $scope.administrativos = [];

        $scope.empleado = {};
        $scope.administrativo = {};
        $scope.datoslaboral = {};
        $scope.listadoDatosAcademicos = [];
        $scope.listadoGradosAcademicos = [];
        $scope.datosfamilia = {};
        $scope.listadodatoshijos = [];


        $scope.listarAdministrativo = function () {
            AdministrativoServ.listarAdministrativo().then(function () {
                $scope.administrativos = AdministrativoServ.administrativos;
            });
        };
        $scope.listarAdministrativo();


        $scope.verDetalleAdministrativo = function (idempleado) {
            console.log("El id del empleado es: " + idempleado);
            // DATOS PERSONALES
            AdministrativoServ.obtenerDatosPersonales(idempleado).then(function (respuesta) {
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
            //DATOS ADMINISTRATIVO
            AdministrativoServ.obtenerDatosAdministrativo(idempleado).then(function (respuesta) {
                $scope.administrativo = respuesta;
            });
            //DATOS LABORAL
            AdministrativoServ.obtenerDatosLaboral(idempleado).then(function (respuesta) {
                $scope.datoslaboral = respuesta;
            });
            //DATOS ACADEMICOS
            AdministrativoServ.obtenerDatosAcademicos(idempleado).then(function (respuesta) {
                $scope.listadoDatosAcademicos = respuesta;
            });
            //GRADOS ACADEMICOS
            AdministrativoServ.obtenerGradosAcademicos(idempleado).then(function (respuesta) {
                $scope.listadoGradosAcademicos = respuesta;
            });
            //DATOS FAMILIA
            AdministrativoServ.obtenerDatosFamilia(idempleado).then(function (respuestadf) {
                $scope.datosfamilia = respuestadf;
                AdministrativoServ.obtenerDatosHijos($scope.datosfamilia.id).then(function (respuestadfh) {
                    $scope.listadodatoshijos = respuestadfh;
                    for (var i = 0; i < respuestadfh.length; i++) {
                        $scope.listadodatoshijos[i].fechanachijo = new Date(respuestadfh[i].fechanachijo);
                    }
                });
            });

        };


        $scope.eliminarAdministrativo = function (idempleado) {
            swal({
                title: "Estas seguro de eliminar el registro?",
                text: "...",
                icon: "warning",
                buttons: true,
                dangerMode: true
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            //Eliminando administrativo
                            function eliminarAdm() {
                                //Eliminando administrativo
                                AdministrativoServ.obtenerDatosAdministrativo(idempleado).then(function (respuesta) {
                                    $scope.administrativo = respuesta;
                                    console.log($scope.administrativo);
                                    if ($scope.administrativo !== '') {
                                        //console.log("dentro del if "+$scope.administrativo);
                                        AdministrativoServ.eliminarAdministrativo($scope.administrativo.id).then(function (respuesta) {
                                            if (respuesta === 1) {
                                                console.log("Se elimino el administrativo del idempleado: " + idempleado);
                                            } else {
                                                console.log("No se elimino el administrativo");
                                            }
                                        });
                                    } else {
                                        console.log("No existe registro de adminsitrativo para el idempleado: " + idempleado);
                                    }
                                });
                            }


                            function eliminarDatosLaboral() {
                                //Eliminando Datos laboral tenga o no tenga
                                AdministrativoServ.obtenerDatosLaboral(idempleado).then(function (respuesta) {
                                    $scope.datoslaboral = respuesta;
                                    if ($scope.datoslaboral !== '') {
                                        console.log("entra");
                                        AdministrativoServ.eliminarDatosLaboral(respuesta.id).then(function (respuesta) {
                                            if (respuesta === 1) {
                                                console.log("Se elimino los datos laboral del idempleado: " + idempleado);
                                                //    $scope.listarAdministrativo();
                                            } else {
                                                console.log("No se elimino el dato laboral");
                                            }
                                        });
                                    } else {
                                        console.log("No existe registro del dato laboral para el idempleado: " + idempleado);
                                    }
                                });
                            }



                            function eliminarDatosAcademicos() {
                                //Eliminando Datos academicos
                                AdministrativoServ.obtenerDatosAcademicos(idempleado).then(function (respuesta) {
                                    $scope.listadoDatosAcademicos = respuesta;
                                    if ($scope.listadoDatosAcademicos !== []) {
                                        for (var i = 0; i < $scope.listadoDatosAcademicos.length; i++) {
                                            AdministrativoServ.eliminarDatoAcademico($scope.listadoDatosAcademicos[i].id).then(function (respuesta) {
                                                if (respuesta === 1) {
                                                    console.log("Se elimino dato academico del empleado: " + idempleado);
                                                } else {
                                                    console.log("No se elimino el dato academico");
                                                }
                                            });
                                        }
                                    } else {
                                        console.log("No existe registro del datos academicos para el idempleado: " + idempleado);
                                    }
                                });
                            }

                            function eliminarGradosAcademicos() {
                                //Eliminando Grado academicos
                                AdministrativoServ.obtenerGradosAcademicos(idempleado).then(function (respuesta) {
                                    $scope.listadoGradosAcademicos = respuesta;
                                    if ($scope.listadoGradosAcademicos !== []) {
                                        for (var i = 0; i < $scope.listadoGradosAcademicos.length; i++) {
                                            AdministrativoServ.eliminarGradoAcademico($scope.listadoGradosAcademicos[i].id).then(function (respuesta) {
                                                if (respuesta === 1) {
                                                    console.log("Se elimino grado academico del empleado: " + idempleado);
                                                } else {
                                                    console.log("No se elimino el grado academico");
                                                }
                                            });
                                        }
                                    } else {
                                        console.log("No existe registro del grados academicos para el idempleado: " + idempleado);
                                    }
                                });
                            }


                            function eliminarHijos() {
                                //Eliminando Familia y Datos hijos
                                AdministrativoServ.obtenerDatosFamilia(idempleado).then(function (respuesta) {
                                    $scope.datosfamilia = respuesta;
                                    if ($scope.datosfamilia !== '') {
                                        AdministrativoServ.obtenerDatosHijos($scope.datosfamilia.id).then(function (respuestadfh) {
                                            $scope.listadodatoshijos = respuestadfh;
                                            for (var i = 0; i < $scope.listadodatoshijos.length; i++) {
                                                AdministrativoServ.eliminarDatoHijo($scope.listadodatoshijos[i].id).then(function (respuesta) {
                                                    if (respuesta === 1) {
                                                        console.log("Se elimino el hijo de la familia: " + $scope.datosfamilia.id);
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
                            }

                            function elimFamilia() {

                                AdministrativoServ.obtenerDatosFamilia(idempleado).then(function (respuesta) {
                                    $scope.listarAdministrativo();
                                    $scope.datosfamilia = respuesta;
                                    AdministrativoServ.eliminarFamilia($scope.datosfamilia.id).then(function (respuesta) {
                                        if (respuesta === 1) {
                                            console.log("Se elimino la familia del empleado: " + idempleado);
                                            $scope.listarAdministrativo();
                                        } else {
                                            console.log("No se elimino la familia");
                                        }
                                    });
                                });
                            }




                            function eliminarEmpleado() {
                                AdministrativoServ.eliminarEmpleado(idempleado).then(function (respuesta) {
                                    if (respuesta === 1) {
                                        swal("Eliminado correctamente!", {
                                            icon: "success",
                                        });

                                    } else {
                                        swal("Ocurrió un error al eliminar administrativo!", "...", "error");
                                    }
                                });

                            }


                            async function addAsync() {
                                await  $timeout(function () {
                                    eliminarAdm();
                                }, 100);
                                await  $timeout(function () {
                                    eliminarDatosLaboral();
                                }, 100);
                                await  $timeout(function () {
                                    eliminarDatosAcademicos();
                                }, 100);
                                await  $timeout(function () {
                                    eliminarGradosAcademicos();
                                }, 100);
                                await  $timeout(function () {
                                    eliminarHijos();
                                }, 100);
                                await  $timeout(function () {
                                    elimFamilia();
                                }, 400);
                                await  $timeout(function () {
                                    eliminarEmpleado();
                                }, 600);

                                await  $timeout(function () {
                                    $scope.verDetalleAdministrativo(idempleado);
                                    $scope.verDetalleAdministrativo(idempleado);
                                    $scope.verDetalleAdministrativo(idempleado);
                                }, 100);

                            }

                            addAsync();


                        } else {
                            swal("Casi elimina el registro!", {

                            });
                        }
                    });




        };


        console.log("ADMINISTRATIVO CONTROLLER");
    }]);

appAdmin.controller('administrativoregistroCtrl', ['$scope', 'AdministrativoServ', function ($scope, AdministrativoServ) {

        $scope.departamentos = [];
        $scope.provincias = [];
        $scope.distritos = [];

        $scope.empleados = [];

        $scope.listadatosacademicos = [];
        $scope.listagradosacademicos = [];
        $scope.datoacademico = {};
        $scope.gradoacademico = {};

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
        $scope.guardarTodoAdministrativo = function (empleado, administrativo, datoslaboral, listadatosacademicos, listagradosacademicos, datosfamilia, listadatoshijos) {
            AdministrativoServ.guardarTodoAdministrativo(empleado, administrativo, datoslaboral, listadatosacademicos, listagradosacademicos, datosfamilia, listadatoshijos).then(function () {
            });
        };

        //agregar a listadodatosacademicos   
        $scope.agregardatoacademico = function (datoacademico) {
            $scope.listadatosacademicos.push(datoacademico);
            $scope.datoacademico = {};
        };

        $scope.agregargradoacademico = function (gradoacademico) {
            $scope.listagradosacademicos.push(gradoacademico);
            $scope.gradoacademico = {};
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

        //Datos academicos
        $scope.listadoDatosAcademicos = [];
        $scope.mostrarDatosAcademicos = function () {
            $("#modalDatosAcademicos").modal();
            AdministrativoServ.obtenerDatosAcademicos($scope.idempleado).then(function (respuesta) {
                $scope.listadoDatosAcademicos = respuesta;
            });
        };
        $scope.actualizarDatosAcademicos = function (listadoDatosAcademicos) {
            for (var i = 0; i < listadoDatosAcademicos.length; i++) {
                AdministrativoServ.actualizarDatosAcademicos(listadoDatosAcademicos[i]).then(function (respuesta) {
                });
            }
            $("#modalDatosAcademicos").modal('hide');
        };

        //Datos academicos
        $scope.listadoGradosAcademicos = [];
        $scope.mostrarGradosAcademicos = function () {
            $("#modalGradosAcademicos").modal();
            AdministrativoServ.obtenerGradosAcademicos($scope.idempleado).then(function (respuesta) {
                $scope.listadoGradosAcademicos = respuesta;
            });
        };
        $scope.actualizarGradosAcademicos = function (listadoGradosAcademicos) {
            for (var i = 0; i < listadoGradosAcademicos.length; i++) {
                AdministrativoServ.actualizarGradoAcademico(listadoGradosAcademicos[i]).then(function (respuesta) {
                });
            }
            $("#modalGradosAcademicos").modal('hide');
        };

        //Datos familia
        $scope.datosfamilia = {};
        $scope.listadodatoshijos = [];
        $scope.mostrarDatosFamilia = function () {
            $("#modalDatosFamilia").modal();
            AdministrativoServ.obtenerDatosFamilia($scope.idempleado).then(function (respuestadf) {
                $scope.datosfamilia = respuestadf;
                $scope.datosfamilia.fechanacimiconyugue = new Date(respuestadf.fechanacimiconyugue); //Para dar formato
                AdministrativoServ.obtenerDatosHijos($scope.datosfamilia.id).then(function (respuestadfh) {
                    $scope.listadodatoshijos = respuestadfh;
                    for (var i = 0; i < respuestadfh.length; i++) {
                        $scope.listadodatoshijos[i].fechanachijo = new Date(respuestadfh[i].fechanachijo);
                    }
                });
            });
        };

        $scope.actualizarDatosFamilia = function (datosfamilia, listadodatoshijos) {
            AdministrativoServ.actualizarDatosFamilia(datosfamilia).then(function (respuesta) {
            });
            for (var i = 0; i < listadodatoshijos.length; i++) {
                AdministrativoServ.actualizarDatosHijos(listadodatoshijos[i]).then(function (respuesta) {
                });
            }
            $("#modalDatosFamilia").modal('hide');
        };




        console.log("AQUI ESTA EL FORMULARIO DE MODIFICAR ADMINISTRATIVOS");
    }]);

appAdmin.controller('administrativoverCtrl', ['$scope', function ($scope) {
        console.log("AQUI ESTA EL FORMULARIO DE VER ADMINISTRATIVOS");
    }]);

///

appAdmin.controller('administrativoescalafonCtrl', ['$scope', 'AdministrativoServ', function ($scope, AdministrativoServ) {
        $scope.administrativos = [];
        $scope.escalafonadm = {};

        $scope.listarAdministrativo = function () {
            AdministrativoServ.listarAdministrativo().then(function () {
                $scope.administrativos = AdministrativoServ.administrativos;
            });
        };
        $scope.listarAdministrativo();


        /*Objeto para mostrar datos del administrativo en el modal*/
        $scope.administrativoc = {};
        /*Mostrar Modal agregar escalafon*/
        $scope.mostrarModalAgregarEscalafon = function (administrativo) {
            $("#modalAgregarEscalafon").modal();
            $scope.administrativoc = angular.copy(administrativo);
        };



        $scope.guardarEscalafonAdm = function (empleado, escalafon) {
            escalafon.empleado = empleado;

            if (escalafon.empleado !== {}) {
                AdministrativoServ.guardarEscalafonAdm(escalafon).then(function (respuesta) {
                    //$scope.administrativo = respuesta;
                });
            } else {
                alert("Empleado no encontrado");
            }
        };


        console.log("administrativo ESCALAFON");




    }]);


appAdmin.controller('administrativoescalafonagregarCtrl', ['$scope', function ($scope) {
        console.log("administrativo AGREGAR ESCALAFON");
    }]);


appAdmin.controller('administrativoescalafonverCtrl', ['$scope', '$routeParams', 'AdministrativoServ', '$timeout', function ($scope, $routeParams, AdministrativoServ, $timeout) {

        $scope.idempleado = $routeParams.idempleado;
        $scope.administrativo = {};

        $scope.listadoEscalafonAdm = [];

        $scope.escalafondet = {};
        $scope.escalafonmod = {};

        $scope.listarEscalafonAdm = function () {
            AdministrativoServ.listarEscalafonAdm($scope.idempleado).then(function (respuesta) {
                $scope.listadoEscalafonAdm = respuesta;
            });
        };
        $scope.listarEscalafonAdm();





        AdministrativoServ.obtenerDatosAdministrativo($scope.idempleado).then(function (respuesta) {
            $scope.administrativo = respuesta;
            $scope.administrativo.nombrecompleto = $scope.administrativo.empleado.apellidopaterno + " " + $scope.administrativo.empleado.apellidomaterno + " " + $scope.administrativo.empleado.nombres;
        });

        /*Mostrar Modal agregar escalafon*/
        $scope.mostrarModalAgregarEscalafon = function (administrativo) {
            $("#modalAgregarEscalafon").modal();
            $scope.administrativoc = angular.copy(administrativo);
        };

        $scope.guardarEscalafonAdm = function (empleado, escalafon) {
            escalafon.empleado = empleado;

            if (escalafon.empleado !== {}) {
                AdministrativoServ.guardarEscalafonAdm(escalafon).then(function (respuesta) {
                    //$scope.administrativo = respuesta;
                    if (respuesta === 1) {
                        $("#modalAgregarEscalafon").modal('hide');
                        $scope.listarEscalafonAdm();
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

        /*Mostrar Modal modificsarl escalafon*/
        $scope.mostrarModalModificarEscalafon = function (escalafon) {
            $("#modalModificarEscalafon").modal();
            $scope.escalafonmod = angular.copy(escalafon);
            $scope.escalafonmod.delfecha = new Date(escalafon.delfecha);
            $scope.escalafonmod.alfecha = new Date(escalafon.alfecha);
            $scope.escalafonmod.fecharesolucion = new Date(escalafon.fecharesolucion);
        };

        $scope.modificarEscalafonAdm = function (escalafonmod) {
            AdministrativoServ.modificarEscalafonAdm(escalafonmod).then(function (respuesta) {
                //$scope.administrativo = respuesta;
                if (respuesta === 1) {
                    $("#modalModificarEscalafon").modal('hide');
                    $scope.listarEscalafonAdm();
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
                                AdministrativoServ.eliminarEscalafonAdm(escalafon).then(function (respuesta) {
                                    //$scope.administrativo = respuesta;
                                    if (respuesta === 1) {
                                         swal("Eliminado correctamente!", {
                                            icon: "success",
                                        });
                                        $scope.listarEscalafonAdm();
                                        $scope.listarEscalafonAdm();
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

        console.log("administrativo VER ESCALAFON");
    }]);

///

//appAdmin.controller('administrativoregistroCtrl', ['$scope',  function ($scope) {
//    console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
//    }]);


/*appAdmin.controller('administrativoescalafonCtrl', ['$scope', function ($scope) {
 console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
 }]);*/



appAdmin.controller('administrativocontratosCtrl', ['$scope', function ($scope) {
        console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
    }]);
appAdmin.controller('administrativoaddendasCtrl', ['$scope', function ($scope) {
        console.log("ADMINISTRATIVO REGISTRO CONTROLLER");
    }]);

///
