package co.com.ath.crud.empleados.model;

public class Empleado {

	private int empleado_id;
	private String empleado_titulo;
	private String empleado_nombres;
	private String empleado_apellidos;
	
	public Empleado(int empleado_id, String empleado_titulo, String empleado_nombres, String empleado_apellidos) {
		this.empleado_id = empleado_id;
		this.empleado_titulo = empleado_titulo;
		this.empleado_nombres = empleado_nombres;
		this.empleado_apellidos = empleado_apellidos;
	}
	
	

	public Empleado(String empleado_titulo, String empleado_nombres, String empleado_apellidos) {
		this.empleado_titulo = empleado_titulo;
		this.empleado_nombres = empleado_nombres;
		this.empleado_apellidos = empleado_apellidos;
	}



	public int getEmpleado_id() {
		return empleado_id;
	}

	public void setEmpleado_id(int empleado_id) {
		this.empleado_id = empleado_id;
	}

	public String getEmpleado_titulo() {
		return empleado_titulo;
	}

	public void setEmpleado_titulo(String empleado_titulo) {
		this.empleado_titulo = empleado_titulo;
	}

	public String getEmpleado_nombres() {
		return empleado_nombres;
	}

	public void setEmpleado_nombres(String empleado_nombres) {
		this.empleado_nombres = empleado_nombres;
	}

	public String getEmpleado_apellidos() {
		return empleado_apellidos;
	}

	public void setEmpleado_apellidos(String empleado_apellidos) {
		this.empleado_apellidos = empleado_apellidos;
	}
	
	

	
	
	
}

