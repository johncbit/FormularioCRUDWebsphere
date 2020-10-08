<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Empleado</title>
</head>
<body>
	<h1>Registrar Empleado</h1>
	<form action="adminEmpleado?action=registrar" method="post">
		<table border="1" align="center">
		<tr>
			<td>Titulo Empleado:</a></td>		
			<td><input type="text" name="titulo_empleado"/></td>	
		</tr>
		<tr>
			<td>Nombres Empleado:</a></td>		
			<td><input type="text" name="nombres_empleado"/></td>	
		</tr>
		<tr>
			<td>Apellidos Empleado:</a></td>		
			<td><input type="text" name="apellidos_empleado"/></td>	
		</tr>
	</table>
	<br>
	<table border="0" align="center">
		<tr>
		<td><input type="submit" value="Agregar" name="agregar"></td>	
		</tr>
	
	</form>
</body>
</html>