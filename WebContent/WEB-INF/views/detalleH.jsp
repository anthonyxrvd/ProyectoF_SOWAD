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

</head>
<body>
	<table class="table table-striped table-bordered table-hover">
				<thead class="thead-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellidos</th>
						<th scope="col">Edad</th>
						<th scope="col">Genero</th>
						<th scope="col">Estado</th>
						<th scope="col">Imagen</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${Vhuerfano}" var="dato">
						<tr>
							<td>${dato.id}</td>
							<td>${dato.nombre}</td>
							<td>${dato.apellido}</td>
							<td>${dato.edad}</td>
							<td>${dato.genero}</td>
							<td><img alt="" width="45"
									src="${urlPublic}/images/${dato.fotoReferencial}"></td>
							<td><c:choose>
									<c:when test="${dato.estado=='Adoptado'}">
									<span class="alert alert-success">Adoptado</span>
									</c:when>
									<c:otherwise>
										<span class="alert alert-danger">En Albergue</span>
									</c:otherwise>
								</c:choose>
								</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="opciones">
		<ul>
			<li><a href="Principal">Regresar</a></li>
		</ul>
	</div>
</body>
</html>