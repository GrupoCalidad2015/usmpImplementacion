package daoFactory;

import java.sql.Connection;
import java.sql.DriverManager;

import dao.mysql.MySql_DigitadorDao;
import dao.mysql.MySql_FichaPacienteDao;
import dao.mysql.MySql_HistoriaClinicaDao;

import dao.interfaces.DigitadorDao;
import dao.interfaces.FichaPacienteDao;
import dao.interfaces.HistoriaClinicaDao;



public class MySqlDAOFactory extends DAOFactory {
		public static Connection crearConexion(){
			Connection con = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/sw2";
				con = DriverManager.getConnection(url, "root", "root");
			} catch (Exception e) {
				// TODO: handle exception
				System.out.print(e.getMessage());
			}
			
			return con;
		}
		
		@Override
public FichaPacienteDao obtenerFichaPaciente() {
			
	return new MySql_FichaPacienteDao();
}

		public DigitadorDao obtenerDigitador() {
			
			return new MySql_DigitadorDao();
		}

		@Override
		public HistoriaClinicaDao obtenerHC() {
			
			return new MySql_HistoriaClinicaDao();
		}	
}

