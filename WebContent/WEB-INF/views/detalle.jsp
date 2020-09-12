<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
	<link rel="stylesheet" href="<c:url value="/resources/css/data.css"/>">
</head>
<body>
<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellidos</th>
						<th scope="col">Edad</th>
						<th scope="col">Genero</th>
						<th scope="col">Estado</th>
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
	<a href="Principal"> regresar</a>
			<script>
	new Morris.Line({
		  // ID of the element in which to draw the chart.
		  element: 'myfirstchart',
		  // Chart data records -- each entry in this array corresponds to a point on
		  // the chart.


		  data: [
		    { year: '2015', value: 20 },
		    { year: '2016', value: 10 },
		    { year: '2017', value: 15 },
		    { year: '2018', value: 30 },
		    { year: '2019', value: 10 }
		  ],
		  // The name of the data record attribute that contains x-values.
		  xkey: 'year',
		  // A list of names of data record attributes that contain y-values.
		  ykeys: ['value'],
		  // Labels for the ykeys -- will be displayed when you hover over the
		  // chart.
		  labels: ['Adoptados']
		});
	
	</script>
</body>
</html>