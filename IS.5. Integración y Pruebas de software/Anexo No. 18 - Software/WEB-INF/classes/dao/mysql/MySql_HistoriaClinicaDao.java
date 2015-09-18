package dao.mysql;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.FichaPacienteBean;
import beans.HistoriaClinicaBean;
import dao.interfaces.HistoriaClinicaDao;
import daoFactory.MySqlDAOFactory;

public class MySql_HistoriaClinicaDao  extends MySqlDAOFactory

implements  HistoriaClinicaDao{

	@Override
	public boolean agregarHC(HistoriaClinicaBean hc) throws Exception {
		boolean flag = false;
		try {
			Connection con = MySqlDAOFactory.crearConexion();
			Statement stmt = con.createStatement();
			int filas = stmt 
					.executeUpdate("insert into t_historiaclinica(edadIngreso,procedencia,departamento,provincia" +
							",distrito,referido,adminicion,servicio,estado,trim,edadGestante" +
							",fUR,primagesta,primParto,medico,pes,pesFam,ant1,ant2,diagInter," +
							"sistCompro,cesariaUCI,tipoEfer,GP,expediente)values " +
							"('"
							+ hc.getEdadIngreso()
							+ "','"
							+ hc.getProcedencia()
							+ "','"
							+ hc.getDepartamento()
							+ "','"
							+ hc.getProvincia()
							+ "','"
							+ hc.getDistrito()
							+ "','"
							+ hc.getReferido()
							+ "','"
							+ hc.getAdminicion()
							+ "','"
							+ hc.getServicio()
							+ "','"
							+ hc.getEstado()
							+ "','"
							+ hc.getTrim()
							+ "','"
							+ hc.getEdadGestante()
							+ "','"
							+ hc.getfUR()
							+ "','"
							+ hc.getPrimagesta()
							+ "','"
							+ hc.getPrimParto()
							+ "','"
							+ hc.getMedico()
							+ "','"
							+ hc.getPes()     
							+ "','"
							+ hc.getPesFam()
							+ "','"
							+ hc.getAnt1()
							+ "','"
							+ hc.getAnt2()
							+ "','"
							+ hc.getDiagInter()
							+ "','"
							+ hc.getSistCompro()
							+ "','"
							+ hc.getCesariaUCI()
							
							+ "','"
							+ hc.getTipoEfer()
							+ "','"
							+ hc.getGP()
							+ "','"
							+ hc.getExpediente()
							+ "')"
							);
		
			if (filas == 1) {
				flag = true;
			}

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return flag;
	}

	@Override
	public Vector<HistoriaClinicaBean> listarHCxDato(String dato) throws Exception {

		Vector<HistoriaClinicaBean> hc = null;
		try {
			Connection con = MySqlDAOFactory.crearConexion();
			Statement stmt = con.createStatement();

			ResultSet rs = stmt
					.executeQuery("select idT_HistoriaClinica ,edadIngreso from t_historiaclinica where "
							+" expediente like '" + dato + "'");

			hc = new Vector<HistoriaClinicaBean>();
			HistoriaClinicaBean unbean = null;

			while (rs.next()) {
				unbean = new HistoriaClinicaBean();
				unbean.setIdT_HistoriaClinica(rs.getInt("idT_HistoriaClinica"));
				unbean.setEdadIngreso(rs.getString("edadIngreso"));
				hc.add(unbean);
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return hc;

		
		
	}

}
