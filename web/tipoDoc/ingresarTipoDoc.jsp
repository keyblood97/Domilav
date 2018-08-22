<%-- 
    Document   : ingresarTipoDoc
    Created on : 8/12/2017, 01:59:48 PM
    Author     : kev_i
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
  </head>
  <body>
      <%@include file="../templates/header.jsp" %>
      
      <div class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">      

                        <div class="card-box">
                <br>
                <h1>INGRESAR BARRIO</h1>
                <br>
                <form action="servletTipoDoc" method="POST" >
                    <input type="hidden" name="opcion" value="1">
                    <input type="submit" id="inicio" name="inicio" value="LISTAR TIPO DOCUMENTO" class="form-control" >
                </form>
                <br>
                <% String resp = (String) request.getAttribute("mensaje");

        if (resp != null) {%>

                <div class="alert alert-success">
                    <strong>EXITO!</strong> <%=resp%>
                </div>

                <%
                    }
                %>
                <br>

      
    <form id="formTipoDoc"  action="servletTipoDoc" method="POST" class="form-horizontal" >
                    <div class="form-group">
                        <input type="hidden" name="opcion" value="3">
                        <label for="nombre" class="control-label col-sm-2">Nombre: </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="nombre" name="nombre"   >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="descripcion" class="control-label col-sm-2">Descripcion: </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="descripcion" name="descripcion"  >

                        </div>
                    </div>
                    <input type="submit" value="enviar"class="btn btn-default" name="guardar">
                </form>
            </div>
            </div>
            </div>
              
       </div>
       </div>
                
                
    <%@include file="../templates/footer.jsp" %>
    <style>
         .error{
             color: red;
         }
     </style>
     <script>
     $(document).ready(function () {
    $("#formTipoDoc").validate({
        rules: {
            nombre: {
                required: true,
                minlength: 3,
                maxlength: 20
            },
            descripcion: {
                required: true,
                minlength: 10,
                maxlength: 220
            }
        },
        messages: {
            nombre: {
                required: "Campo obligatorio",
                minlength: "Muy corto",
                maxlength: "Excede el limite"
            },
            descripcion: {
                required: "Campo obligatorio",
                minlength: "Muy corto",
                maxlength: "Excede el limite"
            }
        }

    });
});
     </script>
  </body>
</html>
