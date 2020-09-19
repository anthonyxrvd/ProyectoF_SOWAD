<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- FORMATO DE FECHAS -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Huerfanos</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<!-- script -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<spring:url value="/resources" var="urlPublic" />
</head>
<body>
<jsp:include page="includes/Encabezado.jsp"></jsp:include>
	<div class="card table-responsive">
		<div class="card-header">Lista de empleados
		<a class="btn btn-warning btn-clock" href="nuevoE" role="button">Nuevo registro</a>
		</div>
		<div class="card-body">
			<table class="table table-striped table-bordered table-hover ">
			<caption>Lista de empleados</caption>
				<thead class="thead-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellidos</th>
						<th scope="col">Cargo</th>
						<th scope="col">Telefono</th>
						<th scope="col">Estado</th>
				        <th scope="col">Datos Adicionales</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dato">

						<tr>
							<c:choose>
								<c:when test="${dato.estado=='Contratado'}">
									<td style="font-weight: bold" class="alert-success">${dato.id}</td>
									<td class="alert-success">${dato.nombre}</td>
									<td class="alert-success">${dato.apellido}</td>
									<td class="alert-success">${dato.cargo}</td>
									<td class="alert-success">${dato.telefono}</td>
									<td style="font-weight: bold" class="alert-success">${dato.estado}</span></td>
									<td class="alert-success"><a style="font-weight: bold" class="btn btn-info btn-clock"
										href="Empleados/${dato.id}" role="button">editar </a> 
										<a style="font-weight: bold" class="btn btn-danger btn-clock"
									href="eliminarE/${dato.id}" role="button" >eliminar </a><!--  <a class="btn btn-sm btn-primary"
									href="detail?id=${dato.id}&fecha=${fechaBuqueda}" role="button"> Ver
										Detalle Horario </a>--></td>
								</c:when>
								<c:otherwise>
									<td style="font-weight: bold" class="alert-danger">${dato.id}</td>
									<td class="alert-danger">${dato.nombre}</td>
									<td class="alert-danger">${dato.apellido}</td>
									<td class="alert-danger">${dato.cargo}</td>
									<td class="alert-danger">${dato.telefono}</td>
									<td style="font-weight: bold" class="alert-danger">${dato.estado}</span></td>
									<td class="alert-danger"><a style="font-weight: bold" class="btn btn-info btn-clock"
									href="Empleados/${dato.id}" role="button" >editar </a>
									<a style="font-weight: bold" class="btn btn-danger btn-clock"
									href="eliminarE/${dato.id}" role="button" >eliminar </a> <!--  <a class="btn btn-sm btn-primary"
									href="detail?id=${dato.id}&fecha=${fechaBuqueda}" role="button"> Ver
										Detalle Horario </a>--></td>
										
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<nav>
		<div class="opciones">
			<ul>
				<li><a href="Principal">Salir</a></li>

			</ul>
		</div>
	</nav>
	
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
