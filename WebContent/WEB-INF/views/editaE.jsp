<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Pacifico&display=swap"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<spring:url value="/editsaveE" var="urlForm"></spring:url>
	<h1 class="card-header bg-info">ModificarDatos</h1>
	<form:form action="${urlForm}" method="POST">
		<div class="col-md-6">
			<div class="form-group card border">
				 <form:hidden path="id"/>
			</div>
			<div class="form-group card border">
				<label>Nombre:</label> <form:input class="form-control" type="text"
					path="nombre" placeholder="Nombre" required="required"/>
			</div>

			<div class="form-group">
				<label>Apellido:</label> <form:input class="form-control" type="text"
					path="Apellido" placeholder="Apellido" required="required"/>
			</div>
			<div class="form-group  col-md-4">
				<label>Cargo:</label> <form:input class="form-control" type="text"
					path="cargo" placeholder="Cargo" required="required"/>
			</div>
			<div class="form-group">
				<label>Telefono:</label> <form:input class="form-control" type="text"
					path="telefono" placeholder="Telefono" required="required"/>
			</div>

			<div class="form-group">
				<label>Estado:</label> 
					<form:select path="estado" class="form-control">
					<form:option value="Contratado">Contratado</form:option>
					<form:option value="De vacaciones">De Vacaciones</form:option>
					<form:option value="Despedido">Despedido</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-clock">Guardar Edicion</button>
			</div>
		</div>
		
	</form:form>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"
		referrerpolicy="origin"></script>
		<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>