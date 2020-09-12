<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
	
<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
<spring:url value="/resources" var="urlPublic" />
</head>
<body>
	<div class="container col-lg-3">
		<form action="loginProcess" class="form-sign" method="post">
		<div class="form-group text-center">
		<img height="80" width="80"src="${urlPublic}/images/logo2.png">
		<p>VERIFICACION DE ACCESO</p>
		</div>
		<div class="form-group">
		<label>USUARIO:</label>
		<input class="form-control" type="text" name="username" placeholder="nombre o id">
		</div>
		<div class="form-group">
		<label>CONTRASENA:</label>
		<input class="form-control" type="password" name="password" placeholder="*******">
		</div>
		<input class="btn btn-danger btn-block" type="submit" value="INGRESAR" name="accion">
		</form>
	</div>
	<!-- <a href="planilla">abrir planilla</a>-->

</body>
</html>