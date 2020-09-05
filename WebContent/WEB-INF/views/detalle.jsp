<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
	<a href="planilla"> ir a planilla</a>
	
</body>
</html>