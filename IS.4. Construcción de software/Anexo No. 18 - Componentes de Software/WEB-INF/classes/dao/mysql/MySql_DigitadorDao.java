package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


import beans.DigitadorBean;
import dao.interfaces.DigitadorDao;
import daoFactory.MySqlDAOFactory;

public class MySql_DigitadorDao extends MySqlDAOFactory

implements DigitadorDao{

	@Override
	public DigitadorBean obtenerDigitador(String usuario, String contraseña){
	DigitadorBean digitador = null;
	try {
		Connection con = MySqlDAOFactory.crearConexion();
		Statement stmt = con.createStatement();
		
		ResultSet rs = stmt.executeQuery("select idt_digitador,nomDig,apeDig,dni,usuario,contraseña  from t_digitador where usuario='"+usuario+"' and contraseña='"+contraseña+"';");
		
		
		if(rs.next()){
			digitador = new DigitadorBean();
			digitador.setIdt_Digitador(rs.getInt("idt_digitador"));
			digitador.setNomDig(rs.getString("nomDig"));
			digitador.setApeDig(rs.getString("apeDig"));
			digitador.setDni(rs.getString("dni"));
			digitador.setUsuario(rs.getString("usuario"));
			digitador.setContraseña(rs.getString("contraseña"));
			
		}
		
	} catch (Exception e) {
		System.out.print(e.getMessage());
	}
	return digitador;

}
}


