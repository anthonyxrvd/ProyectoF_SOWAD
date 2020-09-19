<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista detallada</title>
<spring:url value="/resources" var="urlPublic" />
<link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
</head>
<body>
<spring:url value="/Principal2" var="urlForm"></spring:url>
<div class="card-header">Detalles</div>
   
   
   
   <div class="container contact-form">
			<h1>Mas Detalles</h1>
			<hr>
			<div class="row">
			<div class="col-md-6">
			<h5>Imagen descriptiva</h5>
			<img  height="400" width="300" src="${urlPublic}/images/${huerfano.fotoReferencial}">
			</div>
				<div class="col-md-6" >
					<div class="form-group col-md-6" >
						<label >Nombre:</label> 
						<label class="form-control">${huerfano.nombre}</label>
					</div>
					<div class="form-group col-md-6" style="float: right">
						<label>Apellido:</label>   
						<label class="form-control">${huerfano.apellido}</label>
					</div>
					
					<div class="form-group col-md-6" style="float: right">
						<label>Edad:</label> 
						<label class="form-control">${huerfano.edad}</label>
					</div>
					
					<div class="form-group col-md-6" style="float: right">
						<label>Genero:</label> 
						<label class="form-control">${huerfano.genero}</label>
					</div>
					<div class="form-group col-md-6">
						<label>Estado:</label> 
						<label class="form-control">${huerfano.estado}</label>
					</div>
					<div class="form-group">
						<label>Pequeña descripcion!</label>
	                  <texarea class="form-control" rows="14" >${huerfano.descripcion}</textarea>
					</div>
				</div>
			</div>
		</div>
<tr>
			<td class="alert-warning"><a style="font-weight: bold" class="btn btn-info btn-clock"
									href="/ProyectoF_SOWAD_2/Huerfanos" role="button" >Salir</a>
		</tr>
</body>
</html>