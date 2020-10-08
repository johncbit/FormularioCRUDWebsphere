package co.com.ath.crud.empleados.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import co.com.ath.crud.empleados.model.Conexion;
import co.com.ath.crud.empleados.model.Empleado;

/*
 * @autor: Cristian Guerra
 */

public class EmpleadoDao {
	private Conexion con;
	private Connection connection;

	public EmpleadoDao(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
		jdbcURL += "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		con = new Conexion(jdbcURL, jdbcUsername, jdbcPassword);
	}

	// insertar empleado
	public boolean insertar(Empleado empleado) throws SQLException {
		String sql = "INSERT INTO empleados (empleado_titulo, empleado_nombres, empleado_apellidos) VALUES (?,?,?)";
		con.conectar();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, empleado.getEmpleado_titulo());
		statement.setString(2, empleado.getEmpleado_nombres());
		statement.setString(3, empleado.getEmpleado_apellidos());

		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowInserted;
	}

	// listar todos los empleados
	public List<Empleado> listarEmpleados() throws SQLException {
		List<Empleado> listaEmpleados = new ArrayList<Empleado>();
		String sql = "SELECT * FROM empleados";
		con.conectar();
		connection = con.getJdbcConnection();
		Statement statement = connection.createStatement();
		ResultSet resulSet = statement.executeQuery(sql);
		
		while (resulSet.next()) {
			int empleado_id = resulSet.getInt("empleado_id");
			String empleado_titulo = resulSet.getString("empleado_titulo");
			String empleado_nombres = resulSet.getString("empleado_nombres");
			String empleado_apellidos = resulSet.getString("empleado_apellidos");
			Empleado empleado = new Empleado(empleado_id, empleado_titulo, empleado_nombres, empleado_apellidos);
			listaEmpleados.add(empleado);
		}
		con.desconectar();
		return listaEmpleados;
	}

	// obtener por id
	public Empleado obtenerPorId(int id) throws SQLException {
		Empleado empleado = null;

		String sql = "SELECT * FROM empleados WHERE empleado_id= ? ";
		con.conectar();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setInt(1, id);

		ResultSet res = statement.executeQuery();
		if (res.next()) {
			empleado = new Empleado(res.getInt("empleado_id"), res.getString("empleado_titulo"), res.getString("empleado_nombres"),
					res.getString("empleado_apellidos"));
		}
		res.close();
		con.desconectar();

		return empleado;
	}

	// actualizar
	public boolean actualizar(Empleado empleado) throws SQLException {
		boolean rowActualizar = false;
		String sql = "UPDATE empleados SET empleado_titulo=?,empleado_nombres=?,empleado_apellidos=? WHERE empleado_id=?";
		con.conectar();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, empleado.getEmpleado_titulo());
		statement.setString(2, empleado.getEmpleado_nombres());
		statement.setString(3, empleado.getEmpleado_apellidos());
		statement.setInt(4, empleado.getEmpleado_id());

		rowActualizar = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowActualizar;
	}
	
	//eliminar
	public boolean eliminar(Empleado empleado) throws SQLException {
		boolean rowEliminar = false;
		String sql = "DELETE FROM empleados WHERE empleado_id=?";
		con.conectar();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setInt(1, empleado.getEmpleado_id());

		rowEliminar = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();

		return rowEliminar;
	}
}
