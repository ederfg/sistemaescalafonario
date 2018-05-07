<%-- 
    Document   : registrodocente
    Created on : 14-mar-2018, 15:55:12
    Author     : Eder-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#/">Inicio</a></li>
        <li class="breadcrumb-item"><a href="#/docente/mantenimiento">Registro Docente</a></li>
        <li class="breadcrumb-item active" aria-current="page">Agregar</li>
    </ol>
</nav>
<div class="container">
            <div class="py-5 text-center">
                <i class="material-icons md-48">assignment_ind</i>  
                <h2>REGISTRO DE DATOS DEL PERSONAL</h2>
                <p class="lead">Para registrar a un nuevo docente ingrese los datos correspondientes, es preferible mantener lleno todo los campos.</p>
            </div>

            <div class="col-md-12 order-md-1">
                <h4 class="mb-3">DATOS PERSONALES</h4>
                <form class="needs-validation" novalidate>
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="apPaterno">Apellido Paterno</label>
                            <input type="text" class="form-control" id="apPaterno" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el apellido paterno.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="apMaterno">Apellido Materno</label>
                            <input type="text" class="form-control" id="apMaterno" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el apellido materno.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="nombres">Nombres</label>
                            <input type="text" class="form-control" id="nombres" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar los nombres.
                            </div>
                        </div>  
                    </div>

                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label for="dni">DNI N°</label>
                            <input type="text" class="form-control" id="dni" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el DNI. 
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="fechaNac">Fecha de Nacimiento<span class="text-muted">(14/07/18)</span></label>
                            <input type="date" class="form-control" id="fechaNac" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar la fecha de nacimiento.
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label for="sexo">Sexo</label>
                            <select class="custom-select d-block w-100" id="sexo" required>
                                <option value="">Escoger...</option>
                                <option>M</option>
                                <option>F</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un tipo de sexo.
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="estadoCivil">Estado Civil</label>
                            <select class="custom-select d-block w-100" id="estadoCivil" required>
                                <option value="">Escoger...</option>
                                <option>Solter@</option>
                                <option>Casad@</option>
                                <option>Viud@</option>
                                <option>divorciad@</option>
                                <option>concubin@</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un estado civil.
                            </div>
                        </div>  

                    </div>  

                    <div class="mb-3">
                        <label for="direccion">Dirección</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="direccion" placeholder="" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Por favor ingrese su direccion correcta
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="depa">Departamento</label>
                            <select class="custom-select d-block w-100" id="depa" required>
                                <option value="">Escoger...</option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                               
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un departamento
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="prov">Provincia</label>
                            <select class="custom-select d-block w-100" id="prov" required>
                                <option value="">Escoger...</option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                              
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una provincia
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="dist">Distrito</label>
                            <select class="custom-select d-block w-100" id="dist" required>
                                <option value="">Escoger...</option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                               
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un distrito
                            </div>
                        </div>  

                    </div>   

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="cel">Celular</label>
                            <input type="text" class="form-control" id="cel" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese un celular.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="correo">Correo<span class="text-muted">(Ejm: yelina24@gmail.com)</span></label>
                            <input type="text" class="form-control" id="correo" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese un correo.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="grupoSang">Grupo Sanguineo</label>
                            <select class="custom-select d-block w-100" id="grupoSang" required>
                                <option value="">Escoger...</option>
                                <option>A+</option>
                                <option>A-</option>
                                <option>B+</option>
                                <option>B-</option>
                                <option>AB+</option>
                                <option>AB-</option>
                                <option>O+</option>
                                <option>O-</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona el tipo de sangue.
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="ruc">N° de RUC</label>
                            <input type="text" class="form-control" id="ruc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese su numero de RUC.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="sistPens">Sistema Pensionario</label>
                            <select class="custom-select d-block w-100" id="sistPens" required>
                                <option value="">Escoger...</option>
                                <option>Sistema Nacional de Pensiones</option>
                                <option>Sistema Privado de Pensiones</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona el sistema pensionario
                            </div>
                        </div>


                        <div class="col-md-6 d-inline my-3">
                            <label for="sistPens">¿Perceptor de mayor ingreso en el hogar?</label>     
                            <div class="custom-control custom-radio">
                                <input id="credit" name="1" type="radio" class="custom-control-input" checked required>
                                <label class="custom-control-label" for="credit">Si</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="debit" name="1" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label" for="debit">No</label>
                            </div>
                        </div>

                        <div class="col-md-6 d-inline my-3">
                            <label for="sistPens">¿Afiliado a algún sindicato?</label>     
                            <div class="custom-control custom-radio">
                                <input id="2" name="2" type="radio" class="custom-control-input" checked required>
                                <label class="custom-control-label" for="2">Si</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="3" name="2" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label" for="3">No</label>
                            </div>
                        </div>    

                    </div> 
                    
                    <hr class="mb-4">
                    <center>
                    <button class="btn btn-secondary" type="button">Cancelar</button>
                    <button class="btn btn-primary " type="submit">Guardar</button>
                    </center>                
                </form>
            </div>
            
            <div>
                <br>
                <hr class="mb-4">
                <h4 class="mb-3">DATOS FAMILIARES</h4>
                <form class="needs-validation" novalidate>
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="apPatCony">Ap. Paterno Conyugue</label>
                            <input type="text" class="form-control" id="apPatCony" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es necesario ingresar el apellido paterno del conyugue.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="apMatCony">Ap. Materno Conyugue</label>
                            <input type="text" class="form-control" id="apMatCony" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es necesario ingresar el apellido materno del conyugue.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="nombCony">Nombres Conyugue</label>
                            <input type="text" class="form-control" id="nombCony" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es necesario ingresar el nombre del conyugue.
                            </div>
                        </div>  
                    </div>

                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label for="dnicony">DNI Conyugue N°</label>
                            <input type="text" class="form-control" id="dnicony" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Ingrese el DNI del conyugue.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="fechaNacCony">Fecha de Nac. Conyugue</label>
                            <input type="date" class="form-control" id="fechaNacCony" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Ingrese la fecha de nacimineto del conyugue.
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label for="vive">¿Vive?</label>
                            <select class="custom-select d-block w-100" id="vive" required>
                                <option value="">Escoger...</option>
                                <option>Si</option>
                                <option>No</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor seleccione si vive o no.
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="CelularCony">Celular</label>
                            <input type="text" class="form-control" id="CelularCony" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Ingrese el numero de celular.
                            </div>
                        </div> 

                    </div>  
                    <label><B>Hijos (solo menores de edad)</B></label>
                    <!-- Button trigger modal -->
                    <br>
                    <button id="agregar" type="button" class="btn btn-toolbar" data-toggle="modal" data-target="#exampleModal">
                        Agregar Hijo
                    </button>
                    <br>
                    <table class="table table-bordered btn-success">
                        <thead>
                            <tr>
                                <th scope="col">N°</th>
                                <th scope="col">Ap. Paterno</th>
                                <th scope="col">Ap. Materno</th>
                                <th scope="col">Nombres</th>
                                <th scope="col">Sexo</th>
                                <th scope="col">Fecha Nacimiento</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class="form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class="form-control" id="CelularCony" placeholder="" value="" required></td>
    
                                <td><input type="text" class="form-control" id="CelularCony" placeholder="" value="" required></td>
                            </tr>

                        </tbody>
                    </table>                                          
                    <label><B>En caso de emergencia llamar a:</B></label>         
                    <div class="row">

                        <div class="col-md-6 mb-3">

                            <label for="ruc">Nombre de emergencia</label>
                            <input type="text" class="form-control" id="ruc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese el nombre de emergencia
                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="ruc">Celular de emergencia</label>
                            <input type="text" class="form-control" id="ruc" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese el celular de emergencia
                            </div>
                        </div>


                    </div>
                </form>

                <br>
                <hr class="mb-4">
                <h4 class="mb-3">DATOS ACADEMICOS</h4>
                <form class="needs-validation" novalidate>                                          

                    <label>Llenar solo los niveles educativos que se obtuvieron</label>                
                    <!-- Button trigger modal -->
                    <br>
                    <button id="agregar" type="button" class="btn btn-toolbar" data-toggle="modal" data-target="#exampleModalA">
                        Agregar Nivel Educativo
                    </button>
                    <br>
                    <table class="table table-bordered btn-success">
                        <thead>
                            <tr>
                                <th scope="col">Nivel Educativo</th>
                                <th scope="col">Condición</th>
                                <th scope="col">Centro Educativo o Institucion</th>
                                <th scope="col">Año concluido</th>
                                <th scope="col">Especialidad</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class="form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class="form-control" id="CelularCony" placeholder="" value="" required></td>
                                   
                            </tr>

                        </tbody>
                    </table>
                   
                    <label>Llenar solo los grados académicos obtenidos (opcional)</label>
                    <br>
                    <button id="agregar" type="button" class="btn btn-toolbar" data-toggle="modal" data-target="#exampleModalB">
                        Agregar Grado Académico
                    </button>
                    <br>
                    <table class="table table-bordered btn-success">
                        <thead>
                            <tr>
                                <th scope="col">Grado</th>
                                <th scope="col">Condición</th>
                                <th scope="col">Centro Educativo o Institución</th>
                                <th scope="col">Año concluido</th>
                                <th scope="col">Especialidad</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class=" form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class="form-control" id="CelularCony" placeholder="" value="" required></td>
                                <td><input type="text" class="form-control" id="CelularCony" placeholder="" value="" required></td>
                                   
                            </tr>

                        </tbody>
                    </table>

                </form>    

                <br>
                <hr class="mb-4">
                <h4 class="mb-3">DATOS DE VINCULO LABORAL</h4>
                <form class="needs-validation" novalidate>
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="codigo">Código</label>
                            <input type="text" class="form-control" id="codigo" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Es obligatorio ingresar el codigo
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="fechaIngreso">Fecha Ingreso a la Institución</label>
                            <input type="date" class="form-control" id="fechaIngreso" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese la fecha de ingreso a la institucion.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="condicionLab">Condición Laboral</label>
                            <select class="custom-select d-block w-100" id="condicionLab" required>
                                <option value="">Escoger...</option>
                                <option>Nombrado</option>
                                <option>Contratado</option>
                                <option>CAS</option>
                                <option>Otros</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una condicion. 
                            </div>
                        </div>   
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="categoria">Categoría Docente</label>
                            <select class="custom-select d-block w-100" id="categoria" required>
                                <option value="">Escoger...</option>
                                <option>Principal</option>
                                <option>Asociado</option>
                                <option>Auxiliar</option>
                                <option>Jefe Practicas</option>
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una categoria. 
                            </div>
                        </div> 
                        <div class="col-md-4 mb-3">
                            <label for="regimenDed">Régimen Dedicación</label>
                            <select class="custom-select d-block w-100" id="regimenDed" required>
                                <option value="">Escoger...</option>
                                <option>Exclusivo</option>
                                <option>Completo</option>
                                <option>Parcial</option>

                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona un regimen de dedicacion. 
                            </div>
                        </div> 
                        <div class="col-md-4 mb-3">
                            <label for="tipoContrato">Tipo de Contrato</label>
                            <input type="text" class="form-control" id="tipoContrato" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese el tipo de contrato.
                            </div>
                        </div> 

                    </div>  

                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label for="puesto">Puesto Ocupado</label>
                            <input type="text" class="form-control" id="puesto" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese el puesto.
                            </div>
                        </div>

                        <div class="col-md-3 mb-3">
                            <label for="facultad">Facultad</label>
                            <select class="custom-select d-block w-100" id="facultad" required>
                                <option value="">Escoger...</option>
                                <option>FACULTAD DE CIENCIAS AGRARIAS</option>
                                <option>FACULTAD DE CIENCIAS BIOLOGICAS</option>
                                <option>FACULTAD DE CIENCIAS DE LA EDUCACION</option>
                                <option>FACULTAD DE CIENCIAS ECONOMICAS , ADMINISTRATIVAS Y CONTABLES</option>
                                <option>FACULTAD DE CIENCIAS SOCIALES</option>
                                <option>FACULTAD DE DERECHO Y CIENCIAS POLITICAS</option>
                                <option>FACULTAD DE ENFERMERIA</option>
                                <option>FACULTAD DE INGENIERIA DE MINAS, GEOLOGIA Y CIVIL</option>
                                <option>FACULTAD DE INGENIERIA QUIMICA Y METALURGIA</option>
                                <option>FACULTAD DE OBSTETRICIA</option>
  
                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona una Facultad
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="cese">Tipo de Cese</label>
                            <select class="custom-select d-block w-100" id="cese" required>
                                <option value="">Escoger...</option>
                                <option>Definitivo</option>
                                <option>Parcial</option>

                            </select>
                            <div class="invalid-feedback">
                                Por favor selecciona el tipo de cese.
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="fechaCese">Fecha de Cese</label>
                            <input type="date" class="form-control" id="fechaCese" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Por favor ingrese la fecha de cese.
                            </div>
                        </div> 

                    </div>   

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="ingresoMensual">Ingreso Mensual Bruto</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">S/</span>
                                </div>
                                <input type="text" class="form-control" id="ingresoMensual" placeholder="" required>
                                <div class="invalid-feedback" style="width: 100%;">
                                    Por favor ingrese el ingreso mensual.
                                </div>
                            </div>
                        </div>  


                    </div>                       



                    <hr class="mb-4">
                    <center>
                    <button class="btn btn-secondary" type="button">Cancelar</button>
                    <button class="btn btn-primary " type="submit">Guardar</button>
                    </center>
                </form>

            </div>

            <footer class="text-muted">
                <div class="container">
                    <p class="float-right">
                        <a href="#">Volver arriba</a>
                    </p>
                    <p><center>&copy; 2017-2018 Oficina de Personal</center></p>
                </div>
            </footer>
        </div>



        <!-- Modal agregar hijo -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class=" modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Registrar un hijo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-row">
                                <div class="col">
                                    <input type="text" class=" form-control" id="CelularCony" placeholder="Ap. Paterno" value="" required>
                                </div>
                                <div class="col">
                                    <input type="text" class=" form-control" id="CelularCony" placeholder="Ap. Materno" value="" required>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" id="CelularCony" placeholder="Nombres" value="" required>
                                </div>
                                <div class="col">
                                    <select class="custom-select d-block w-100" id="vive" placeholder="" required>
                                        <option value="">Sexo...</option>
                                        <option>M</option>
                                        <option>F</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <input type="date" class="form-control" id="CelularCony" placeholder="Fecha Nacimiento" value="" required>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </div>
        </div>
        
 
        <!-- Modal agregar Nivel Educativo -->
        <div class="modal fade" id="exampleModalA" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelA" aria-hidden="true">
            <div class=" modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabelA">Agregar Nivel Educativo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-row">
                                <div class="col">
                                    <select class="custom-select d-block w-100" id="vive" placeholder="" required>
                                        <option value="">Nivel Educativo...</option>
                                        <option>Primaria</option>
                                        <option>Secundaria</option>
                                        <option>Tecnico</option>
                                        <option>Superior</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <select class="custom-select d-block w-100" id="vive" placeholder="" required>
                                        <option value="">Condicion...</option>
                                        <option>incompleta</option>
                                        <option>completa</option>
                                        <option>egresado</option>
                                        <option>titulado</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" id="CelularCony" placeholder="Centro Educ. o institucion" value="" required>
                                </div>
                                <div class="col">
                                <input type="date" class="form-control" id="CelularCony" placeholder="Año concluido" value="" required>

                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" id="CelularCony" placeholder="Especialidad" value="" required>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </div>
        </div>
        
         <!-- Modal agregar Grado Academico -->
        <div class="modal fade" id="exampleModalB" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelB" aria-hidden="true">
            <div class=" modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabelB">Agregar Grado Academico</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-row">
                                <div class="col">
                                    <select class="custom-select d-block w-100" id="vive" placeholder="" required>
                                        <option value="">Grado...</option>
                                        <option>Bachiller</option>
                                        <option>Maestria</option>
                                        <option>Doctorado</option>
                                        
                                    </select>
                                </div>
                                <div class="col">
                                    <select class="custom-select d-block w-100" id="vive" placeholder="" required>
                                        <option value="">Condicion...</option>
                                        <option>incompleta</option>
                                        <option>egresado</option>
                                        <option>titulado</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" id="CelularCony" placeholder="Centro Educ. o institucion" value="" required>
                                </div>
                                <div class="col">
                                <input type="date" class="form-control" id="CelularCony" placeholder="Año concluido" value="" required>

                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" id="CelularCony" placeholder="Especialidad" value="" required>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </div>
        </div>
