<%-- 
    Document   : redireccionando
    Created on : 09/03/2018, 11:05:56 AM
    Author     : Eder-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Redirect</h1>
       <a href="${pageContext.request.contextPath}/administracion/login">Click si no es redireccionado</a>
        
        <script>
            window.location = "${pageContext.request.contextPath}/administracion/login";
        </script>
    </body>
</html>
