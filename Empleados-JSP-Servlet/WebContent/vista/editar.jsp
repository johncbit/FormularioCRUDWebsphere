<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Empleado</title>
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
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

</head>
<body class="bg-info">
	<div class="container text-center">
		<h1>Actualizar Empleado</h1>
		<img alt=""
			src="https://icons.iconarchive.com/icons/custom-icon-design/flatastic-4/512/Male-user-edit-icon.png"
			width="20%" style="margin: 20px">
		<div class="row">
			<div class="col-12">

				<form action="adminEmpleado?action=editar" method="post">
					<input type="hidden" name="id_empleado"
						<c:out value="${empleado.empleado_id}">
					<table align="center">
						<tr>
							<td><label>Título Empleado</label></td>
							<td><input type="text" name="titulo_empleado" maxlength="20" <c:out value="${empleado.empleado_titulo}"/> </td>
						</tr>
						<tr>
							<td><label>Nombres Empleado</label></td>
							<td><input type="text" name="nombres_empleado" maxlength="50" <c:out value="${empleado.empleado_nombres}"/> </td>
						</tr>
						<tr>
							<td><label>Apellidos Empleado</label></td>
							<td><input type="text" name="apellidos_empleado" maxlength="50" <c:out value="${empleado.empleado_apellidos}"/> </td>
						</tr>
					</table>
					<div class="row">
						<div class="col-12" style="margin-top: 20px">
							<a type="button" class="btn btn-warning" href="adminEmpleado?action=index" >Ir al menú</a>
							<button type="submit" class="btn btn-success" name="registrar">Guardar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>