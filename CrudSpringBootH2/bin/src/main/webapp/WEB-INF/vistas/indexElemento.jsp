<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRUD SPRING BOOT H2</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-4">
	<a href="/nuevoElemento" class="btn btn-success">Agregar Nuevo</a>
	<br>
	<br>
		<table class="table">
			<thead>
				<tr class="text-center">
					<th>ID</th>
					<th>CATALOGO</th>
					<th>CADENA</th>
					<th>ACCION</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="elemento" items="${elementos}">
					<tr>
						<td class="text-center">${elemento.id}</td>
						<td>${elemento.nombre_catalogo}</td>
						<td>${elemento.cadena}</td>
						<td class="text-center">
						<a href="/editarElemento/${elemento.id}" class="btn btn-warning">Editar</a>
						<a href="/eliminarElemento/${elemento.id}" class="btn btn-danger">Eliminar</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>

	</div>
</body>
</html>