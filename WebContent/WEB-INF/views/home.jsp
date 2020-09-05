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
<title>Planilla</title>
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
	<div class="card">

		<div class="card-header">PLANILLA</div>
		<div class="card-body">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellidos</th>
						<th scope="col">Cargo</th>
						<th scope="col">Telefono</th>
						<th scope="col">Fecha Inicio</th>
						<th scope="col">Fecha Fin</th>
						<th scope="col">Imagen</th>
						<th scope="col">Estado</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${Vempleado}" var="dato">
						<tr>
							<td>${dato.id}</td>
							<td>${dato.nombre}</td>
							<td>${dato.apellido}</td>
							<td>${dato.cargo}</td>
							<td>${dato.telefono}</td>
							<td><fmt:formatDate value="${dato.fechaInicio}"
									pattern="dd-MM-YYY" /></td>
							<td><fmt:formatDate value="${dato.fechaFin}"
									pattern="dd-MM-YYY" /></td>
							<td><img alt="" width="60"
								src="${urlPublic}/images/${dato.imagen}"></td>
							<td><c:choose>
									<c:when test="${dato.estado=='Activo'}">
										<span class="alert alert-success">Contratado</span>
									</c:when>
									<c:otherwise>
										<span class="alert alert-danger">Despedido</span>
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
				<li><a href="detail">abrir detalle</a></li>
				<li><a href="acceso">SALIR</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>