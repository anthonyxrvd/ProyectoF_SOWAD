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
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Pacifico&display=swap"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<spring:url value="enviar" var="urlForm"></spring:url>
	<form action="${urlForm}" method="post" >
		<div class="container contact-form">
			<h1>Contactanos</h1>
			<hr>
			<div class="row">
				<div class="col-md-6">
					<address>Trujillo - Villa del Mar</address>
					<p>Telefono:- +51980989181</p>
					<img height="120" width="400"
						src="${urlPublic}/images/Contactanos.png">
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Nombre:</label> <input type="text" class="form-control" name="nombreReportante" required="required">
					</div>
					<div class="form-group">
						<label>Correo de contacto:</label> <input type="text"
							class="form-control" name="correoElectronico">
					</div>

					<div class="form-group">
						<label for="descripcion" required="required">Dejanos un mensaje y un trabajador social se
							contactar� contigo!</label>
						<textarea class="form-control" rows="14" name="descripcion" id="descripcion"></textarea>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-clock">Enviar</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	 <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script>tinymce.init({
	  selector:'#descripcion',
	  plugins:"texcolor,table lists code",
	  toolbar:"undo redo |bold italic alignleft aligncenter alignright alignjustify \n\
	  | bullist numlist outdent indent | forecolor backcolor table code"
  });
 
  </script>
 
	<jsp:include page="includes/footer.jsp"></jsp:include>
	<div class="opciones">
	<div class="card-header">Opciones</div>
		<div class="card-body">
			<table class="table table-striped table-bordered table-hover ">
				<thead class="thead-white">
					<tr>
						<th scope="row"><li><a href="detail">Abrir detalle</a></li></th>
						<th scope="row"><li><a href="data">Estadisticas</a></li></th>
						<th scope="row"><li><a href="Principal">Salir</a></li></th>
					</tr>
				</thead>
				<tbody>
	</div>
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
  <br>
</body>
</html>