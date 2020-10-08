<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Empleado</title>
</head>
<body>
<h1>Actualizar Empleado</h1>
	<form action="adminEmpleado?action=editar" method="post" >
	<input type="hidden" name="id_empleado" <c:out value="${empleado.empleado_id}"/> >
		<table>
			<tr>
				<td><label>Título Empleado</label></td>
				<td><input type="text" name="titulo_empleado" <c:out value="${empleado.empleado_titulo}"/> ></td>
			</tr>
			<tr>
				<td><label>Nombres Empleado</label></td>
				<td><input type="text" name="nombres_empleado" <c:out value="${empleado.empleado_nombres}"/> ></td>
			</tr>
			<tr>
				<td><label>Apellidos Empleado</label></td>
				<td><input type="text" name="apellidos_empleado" <c:out value="${empleado.empleado_apellidos}"/> ></td>
			</tr>
		</table>
		<input type="submit" name="registrar" value="Guardar">
	</form>

</body>
</html>