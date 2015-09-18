package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.FichaPacienteBean;

import dao.interfaces.FichaPacienteDao;
import daoFactory.MySqlDAOFactory;

public class MySql_FichaPacienteDao extends MySqlDAOFactory

implements FichaPacienteDao {

	public boolean agregarPaciente(FichaPacienteBean fichaPaciente) throws Exception {

		boolean flag = false;
		try {
			Connection con = MySqlDAOFactory.crearConexion();
			Statement stmt = con.createStatement();
			int filas = stmt // fecNac
					.executeUpdate("insert into t_fichapaciente(dni,nombre,apellidoPaterno,apellidomaterno,nroHijos,nroEmbarazos,nroPartos,nroCesareas,nroAbortos"
							+ ",direccion,numCasa,numEmergencia,numCelular,email,fecNac,departamento,provincia,distrito,expediente) values"
							+ "('"
							+ fichaPaciente.getDni()
							+ "','"
							+ fichaPaciente.getNombre()
							+ "','"
							+ fichaPaciente.getApellidoPaterno()
							+ "','"
							+ fichaPaciente.getApellidoMaterno()
							+ "','"
							+ fichaPaciente.getNroHijos()
							+ "','"
							+ fichaPaciente.getNroEmbarazos()
							+ "','"
							+ fichaPaciente.getNroPartos()
							+ "','"
							+ fichaPaciente.getNroCesareas()
							+ "','"
							+ fichaPaciente.getNroAbortos()
							+ "','"
							+ fichaPaciente.getDireccion()
							+ "','"
							+ fichaPaciente.getNumCasa()
							+ "','"
							+ fichaPaciente.getNumEmergencia()
							+ "','"
							+ fichaPaciente.getNumCelular()
							+ "','"
							+ fichaPaciente.getEmail()
							+ "','"
							+ fichaPaciente.getFecNac()
							+ "','"
							+ fichaPaciente.getDepartamento()
							+ "','"
							+ fichaPaciente.getProvincia()
							+ "','"
							+ fichaPaciente.getDistrito() 
							+ "','"
							+ fichaPaciente.getExpediente() +"')");

			if (filas == 1) {
				flag = true;
			}

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return flag;

	}

	public boolean prebuscarDni(String dni) {
		boolean flag = false;

		try {
			Connection con = MySqlDAOFactory.crearConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("select idT_FichaPaciente from t_fichapaciente where dni like '"
							+ dni + "'");

			if (rs.next())
				flag = true;

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;

	}

	public int esAlfaNumericaDNI(String cadena) {
		int cont = 0;
		for (int i = 0; i < cadena.length(); ++i) {
			char c = cadena.charAt(i);
			if (c == '0' || c == '1' || c == '2' || c == '3' || c == '4'
					|| c == '5' || c == '6' || c == '7' || c == '8' || c == '9') {
				cont++;
			}
		}
		if (cont == cadena.length()) {
			return 0;
		} else {
			return 1;
		}
	}

	@Override
	public boolean prebuscarNombre(String nombre) throws Exception {
		boolean flag = false;

		try {
			Connection con = MySqlDAOFactory.crearConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("select * from t_fichapaciente where nombre like '"
							+ nombre + "'");

			if (rs.next())
				flag = true;

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;

	}

	@Override
	public Vector<FichaPacienteBean> listarxDato(String tipodato, String dato)
			throws Exception {

		Vector<FichaPacienteBean> fichaPaciente = null;
		try {
			Connection con = MySqlDAOFactory.crearConexion();
			Statement stmt = con.createStatement();

			ResultSet rs = stmt
					.executeQuery("select idT_FichaPaciente,dni,nombre,apellidoPaterno,fecNac,nroHijos,nroEmbarazos,nroPartos,nroCesareas,nroAbortos,direccion"
							+ "  ,numCasa,numEmergencia,numCelular,email,apellidoMaterno,departamento,provincia,distrito,expediente from t_fichapaciente where "
							+ tipodato + " like '" + dato + "'");

			fichaPaciente = new Vector<FichaPacienteBean>();
			FichaPacienteBean unbean = null;

			while (rs.next()) {
				unbean = new FichaPacienteBean();
				unbean.setidT_FichaPaciente(rs.getInt("idT_FichaPaciente"));
				unbean.setNombre(rs.getString("nombre"));
				unbean.setDni(rs.getString("dni"));
				unbean.setApellidoMaterno(rs.getString("apellidoMaterno"));
				unbean.setApellidoPaterno(rs.getString("apellidoPaterno"));
				unbean.setFecNac(rs.getString("fecNac"));

				unbean.setNroHijos(rs.getInt("nroHijos"));
				unbean.setNroEmbarazos(rs.getInt("nroEmbarazos"));
				unbean.setNroPartos(rs.getInt("nroPartos"));
				unbean.setNroCesareas(rs.getInt("nroCesareas"));
				unbean.setNroAbortos(rs.getInt("nroAbortos"));
				
				unbean.setDireccion(rs.getString("direccion"));
				unbean.setNumCasa(rs.getString("numCasa"));
				unbean.setNumEmergencia(rs.getString("numEmergencia"));
				unbean.setNumCelular(rs.getString("numCelular"));
				unbean.setEmail(rs.getString("email"));
				unbean.setDepartamento(rs.getString("departamento"));
				unbean.setProvincia(rs.getString("provincia"));
				unbean.setDistrito(rs.getString("distrito"));
				unbean.setExpediente(rs.getString("expediente"));
				
				fichaPaciente.add(unbean);
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return fichaPaciente;

	}
	
	@Override
	public int generarNumeroExpediente() throws Exception {
		int cont= (int)(Math.random()*(999999999-100000000+1)+100000000); 
		return cont;
	}

	@Override
	public String generarDNIFicticio() throws Exception {
		boolean flagDni=false;
		String dniFic=null;
		
		do{
			int alea=(int)(Math.random()*(999-100+1)+100); 
			dniFic="dni"+01+""+alea;
			flagDni=prebuscarDni(dniFic);
	       }while(flagDni!=false);
		
		return dniFic;
	}

}
