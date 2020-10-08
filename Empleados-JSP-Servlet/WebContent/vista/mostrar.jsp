<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrar Empleados</title>
</head>
<body>
	<h1>Lista de Empleados</h1>
	<table>
		<tr>
			<td><a href="adminEmpleado?action=index" >Ir al menú</a> </td>
		</tr>
	</table>
	
	<table border="1" width="100%">
		<tr>
		 <td> Id Empleado</td>
		 <td> Título</td>
		 <td> Nombres</td>
		 <td>Apellidos</td>
		 <td colspan=2>Acciones</td>
		</tr>
		<c:forEach var="empleado" items="${lista}">
			<tr>
				<td><c:out value="${empleado.empleado_id}"/></td>
				<td><c:out value="${empleado.empleado_titulo}"/></td>
				<td><c:out value="${empleado.empleado_nombres}"/></td>
				<td><c:out value="${empleado.empleado_apellidos}"/></td>

				<td><a href="adminEmpleado?action=showedit&id=<c:out value="${empleado.empleado_id}"/>">Editar</a></td>
				<td><a href="adminEmpleado?action=eliminar&id=<c:out value="${empleado.empleado_id}"/>">Eliminar</a> </td>				
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>