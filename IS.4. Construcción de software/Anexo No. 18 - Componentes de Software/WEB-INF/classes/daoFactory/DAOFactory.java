package daoFactory;

import dao.interfaces.DigitadorDao;
import dao.interfaces.FichaPacienteDao;
import dao.interfaces.HistoriaClinicaDao;



public abstract class DAOFactory {
	
	public static int MySql = 1;
	public static int Oracle = 2;
	public static int SqlServer = 3;
	
	public abstract FichaPacienteDao obtenerFichaPaciente();
	public abstract DigitadorDao obtenerDigitador();
	public abstract HistoriaClinicaDao obtenerHC();
	
	public static DAOFactory obtenerFactory(int origen){
		switch (origen) {
			case 1:
				//retornar el DAOFactory Mysql
				return new MySqlDAOFactory();
			case 2:
				//retornar el DAOFactory Oracle
			case 3:
				//retornar el DAOFactory SqlServer
			default:
				return null;
		}
	}

	
}