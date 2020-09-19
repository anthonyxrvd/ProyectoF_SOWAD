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
	<spring:url value="/guardar" var="urlForm"></spring:url>
	<h1 class="card-header bg-info">Nuevo Registro :D</h1>
	<form:form action="${urlForm}" method="POST" enctype="multipart/form-data" >
		<div class="col-md-6">
			<div class="form-group card border">
				<label>Nombre:</label> <input class="form-control" type="text"
					name="nombre" placeholder="nombre" required="required">
			</div>

			<div class="form-group">
				<label>Apellido:</label> <input class="form-control" type="text"
					name="Apellido" placeholder="nombre" required="required">
			</div>
			<div class="form-group  col-md-4">
				<label>Edad:</label> <input class="form-control" type="text"
					name="Edad" placeholder="nombre" required="required">
			</div>
			<div class="form-group">
				<label>Genero:</label> <input class="form-control" type="text"
					name="Genero" placeholder="nombre" required="required">
			</div>

				<div class="form-group" class="col-sm-3">
				<label for="estado" class="control-label">Estado:</label>
				<form:select path="estado" class="form-control">
					<form:option value="Adoptado">Adoptado</form:option>
					<form:option value="En albergue">En albergue</form:option>
					<form:option value="Abandono">Estado de Abandono</form:option>
				</form:select>
			</div>
			<div class="col-sm-3">
			<div class="form-group">
				<label for="imagen">Imagen</label> 
				<input type="file"name="fotoReferencial"/>
				<p class="help-block">Foto Referencial</p>
			</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-clock">Enviar</button>
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
		
		 <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</body>
</html>