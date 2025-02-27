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
		<form action="/actualizarCatalogo" method="POST" class="col-sm-5">
			<div class="card">
				<div class="card-header">
					<h4>Actualizar Catalogo</h4>
				</div>
				<div class="card-body">					
					<div class="form-group">
						<label>ID</label> <input type="text" name="id"
							class="form-control" value="${catalogo.id}" readonly="readonly">
					</div>
					<div class="form-group">
						<label>TIPO</label> <input type="text" name="tipo"
							class="form-control" value="${catalogo.tipo}">
					</div>
				</div>
				<div class="card-footer">
					<input type="submit" value="Actualizar" class="btn btn-info" /> <a
						href="/listarCatalogo" class="btn btn-link">Regresar</a>
				</div>
			</div>
		</form>

	</div>
</body>
</html>