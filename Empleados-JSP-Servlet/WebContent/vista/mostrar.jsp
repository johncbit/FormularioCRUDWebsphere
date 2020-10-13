<%@include file="/vista/init.jsp"%>

<h1>Lista de Empleados</h1>
<img width="20%"
	src="https://cdn.pixabay.com/photo/2016/04/15/18/05/computer-1331579_960_720.png" style="margin:20px">


<table class="text-light" border="1" width="100%" align="center">
	<tr>
		<td>Id Empleado</td>
		<td>Título</td>
		<td>Nombres</td>
		<td>Apellidos</td>
		<td colspan=2>Acciones</td>
	</tr>
	<c:forEach var="empleado" items="${lista}">
		<tr>
			<td><c:out value="${empleado.empleado_id}" /></td>
			<td><c:out value="${empleado.empleado_titulo}" /></td>
			<td><c:out value="${empleado.empleado_nombres}" /></td>
			<td><c:out value="${empleado.empleado_apellidos}" /></td>

			<td><a class="text-light"
				href="adminEmpleado?action=showedit&id=<c:out value="${empleado.empleado_id}"/>"><img alt="" src="https://freeiconshop.com/wp-content/uploads/edd/document-edit-flat.png" width="50px"></a></td>
			<td><a data-toggle="modal"
				data-target="#eliminar${empleado.empleado_id}" class="text-light"><img alt="" src="https://cdn3.iconfinder.com/data/icons/social-messaging-ui-color-line/254000/82-512.png" width="50px" style="margin:5px"></a>
			</td>

			<!-- Modal -->
			<div class="modal fade" id="eliminar${empleado.empleado_id}"
				role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<img alt=""
								src="https://www.pngkit.com/png/full/438-4388226_delete-user-icon-png-remove-user-icon-png.png"
								width="30%">
							<p>
								Desea eliminar de la base de datos al empleado <strong>${empleado.empleado_nombres}
									${empleado.empleado_apellidos}</strong>
							</p>
						</div>
						<div class="modal-footer text-center">
							<div class="row">
								<div class="col-12 text-center">
									<a type="button" class="btn btn-danger" data-dismiss="modal">Volver</a>
									<a type="button" class="btn btn-danger"
										href="adminEmpleado?action=eliminar&id=<c:out value="${empleado.empleado_id}"/>">Eliminar</a>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</tr>
	</c:forEach>
</table>
<br>
<table align="center">
	<tr>
		<td><a type="button" class="btn btn-warning"
			href="adminEmpleado?action=index">Ir al menú</a></td>
	</tr>
</table>

</div>
</body>
</html>