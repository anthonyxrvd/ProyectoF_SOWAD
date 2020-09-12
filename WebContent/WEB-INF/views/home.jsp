<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<title>Principal</title>
<spring:url value="/resources" var="urlPublic" />
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<a style="color: white" class="navbar-toggler"><span
			class="navbar-toggler-icon"></span>Home</a>
		<div class="dropdown">
			<a style="color: white" href="#" class="nav-link dropdown-toggle"
				data-toggle="dropdown">Cerrar Sesion</a>
			<div class="dropdown-menu text-center">
				<a><img height="60" width="60"src="${urlPublic}/images/login.png"></a><br>
				<a>Antho</a>
				<div class="dropdown-divider"></div>
				<a href="acceso" class="dropdown-item">Salir</a>
			</div>
		</div>
	</nav>

	<div class="opciones">
		<ul>
			<li><a href="Huerfanos">abrir lista de niños del albergue</a></li>
			<li><a href="lista">abrir planilla de trabajadores</a></li>
			<li><a href="data">Estadisticas</a></li>
			<li><a href="call">Contactanos</a></li>
		</ul>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>

