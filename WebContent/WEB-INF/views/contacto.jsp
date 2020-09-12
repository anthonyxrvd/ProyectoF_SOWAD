<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<spring:url value="/resources" var="urlPublic" />
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Pacifico&display=swap" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<div class="container contact-form">
		<h1>Contactanos</h1>
		<hr>
		<div class="row">
			<div class="col-md-6">
				<address>Trujillo - Villa del Mar</address>
				<p>Telefono:- +51980989181</p>
				<img height="120" width="400" src="${urlPublic}/images/Contactanos.png">
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>Nombre:</label> <input type="text" class="form-control">
				</div>
				<div class="form-group">
					<label>Correo de contacto:</label> <input type="text"
						class="form-control">
				</div>

				<div class="form-group">
					<label>Dejanos un mensaje y un trabajador social se
						contactará contigo!</label>
					<textarea class="form-control" rows="5"></textarea>
				</div>
				<div class="form-group">
					<button class="btn btn-primary btn-clock">Enviar</button>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
<div class="opciones">
			<ul>
				<li><a href="detail">abrir detalle</a></li>
				<li><a href="data">Estadisticas</a></li>
				<li><a href="Principal">SALIR</a></li>
				
			</ul>
		</div>	
</body>
</html>