package dao.interfaces;

import beans.DigitadorBean;

public interface DigitadorDao {
	
	public DigitadorBean obtenerDigitador(String dni, String contraseña) throws Exception;
	

}
