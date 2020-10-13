<%@include file="/vista/init.jsp"%>

<h1>Registrar Empleado</h1>
<img style="margin-bottom: 50px"
	src="https://www.lifeskillslink.com/uploads/business_user_add.png" style="margin:20px">


<div class="row">
	<div class="col-12">
		<form action="adminEmpleado?action=registrar" method="post">
			<table class="table" border="1" align="center">
				<tr class="table-light">
					<td>Titulo Empleado:</a></td>
					<td><input type="text" name="titulo_empleado" /></td>
				</tr>
				<tr class="table-light">
					<td>Nombres Empleado:</a></td>
					<td><input type="text" name="nombres_empleado" /></td>
				</tr>
				<tr class="table-light">
					<td>Apellidos Empleado:</a></td>
					<td><input type="text" name="apellidos_empleado" /></td>
				</tr>
			</table>
			<br>
			<table border="0" align="center">
				<tr>
					<td><a type="button" class="btn btn-warning"
						href="adminEmpleado?action=index">Ir al menú</a></td>
					<td>
						<button type="submit" class="btn btn-success" name="agregar">Agregar</button>
					</td>
				</tr>

				</form>
				</div>
	</div>
</div>
</body>
</html>