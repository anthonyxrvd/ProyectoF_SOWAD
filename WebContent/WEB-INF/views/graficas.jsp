<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Estadisticas</title>
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


	<div class="container">
		<h1>Graficas</h1>
		<hr>
		<div class="row">
			<div class="col-md-6">
				<h2>Niños adoptados Por año</h2>
				<hr>
				<div id="myfirstchart"></div>
			</div>
			<div class="col-md-6">
				<h2>Niños abandonados por año</h2>
			</div>
		</div>
	</div>
	<script src="resources/js/lineas.js" charset="utf-8"></script>
<c:forEach items="${Vempleado}" var="dato"></c:forEach>

	<div class="opciones">
		<ul>
			<li><a href="Principal">Regresar</a></li>
		</ul>
	</div>
</body>
</html>