<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

	<!-- <link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">-->
</head>
<body>
<br>
	<br>
<div class="container">
      <div class="row">
      <form method="post" id="perfil">
        <div class="col-xs-60 col-sm-60 col-md-60 col-lg-60 toppad" >

          <div class="panel panel-success"><br>
              <h2 class="panel-title"><center><font size="5"><i class="glyphicon glyphicon-user"></i>PERFIL</font></center></h2>

            <div class="panel-body">
              <div class="row">
			  
                <div class="col-md-3 col-lg-3 " align="center"> 
				<div id="load_img">
					<img class="img-responsive" src="<?php echo $row['logo_url'];?>" alt="Logo">
					
				</div>
				<br>				
					<div class="row">
  						<div class="col-md-12">
							<div class="form-group">
								<input class='filestyle' data-buttonText="Logo" type="file" name="imagefile" id="imagefile" onchange="upload_image();">
							</div>
						</div>
						
					</div>
				</div>
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-condensed">
                    <tbody>
                      <tr>
                        <td class='col-md-3'>Nombre:</td>
                        <td><input type="text" class="form-control input-sm" name="nombre" value="nombre"></td>
                      </tr>
                      <tr>
                        <td class='col-md-3'>Apellido:</td>
                        <td><input type="text" class="form-control input-sm" name="apellido" value="apellido"></td>
                      </tr>
                      <tr>
                        <td>Edad:</td>
                        <td><input type="text" class="form-control input-sm" name="edad" value="edad"></td>
                      </tr>
                      <tr>
                        <td>Correo electrónico:</td>
                        <td><input type="email" class="form-control input-sm" name="correo" value="<?php echo $row['correo']?>" ></td>
                      </tr>
					  <tr>
                        <td>Telefono:</td>
                        <td><input type="text" class="form-control input-sm" required name="telefono" value="<?php echo $row['telefono']?>"></td>
                      </tr>

                      <tr>
                        <td>salario que desea:</td>
                        <td><input type="text" class="form-control input-sm" required name="salario" value="<?php echo $row['salario']?>"></td>
                      </tr>

					  <tr>
                        <td>Idiomas:</td>
                        <td><input type="text" class="form-control input-sm" name="idioma" value="<?php echo $row["idioma"];?>" required></td>
                      </tr>
					  <tr>
                        <td>Ciudad:</td>
                        <td><input type="text" class="form-control input-sm" name="ciudad" value="<?php echo $row["ciudad"];?>" required></td>
                      </tr>
					  <tr>
                        <td>Codigo Postal:</td>
                        <td><input type="text" class="form-control input-sm" name="codigo_postal" value="<?php echo $row["codigo_postal"];?>"></td>
                      </tr>
					  <tr>
                        <td>Expectativas</td>
                        <td><input type="text" class="form-control input-sm" name="expectativa" value="<?php echo $row["expectativa"];?>"></td>
                      </tr>

                    </tbody>
                  </table>
             
                </div>
				<div class='col-md-12' id="resultados_ajax"></div><!-- Carga los datos ajax -->
              </div>
            </div>
                 <div class="panel-footer text-center">
                    
                     
                <button type="submit" class="btn btn-sm btn-success"><i class="glyphicon glyphicon-refresh"></i> Actualizar hoja de vida</button>

                       
                       
                    </div>
            
          </div>
        </div>
		</form>
      </div>
      </div>

</body>
</html>