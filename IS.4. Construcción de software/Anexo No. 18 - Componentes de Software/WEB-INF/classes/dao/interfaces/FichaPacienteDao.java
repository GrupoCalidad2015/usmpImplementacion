package dao.interfaces;

import java.util.Vector;


import beans.FichaPacienteBean;

public interface FichaPacienteDao {
public boolean agregarPaciente(FichaPacienteBean fichaPaciente) throws Exception;
public boolean prebuscarDni(String dni)throws Exception;
public boolean prebuscarNombre(String nombre) throws Exception;
public Vector<FichaPacienteBean> listarxDato(String tipodato,String dato) throws Exception;
public int esAlfaNumericaDNI( String cadena) throws Exception;
public int generarNumeroExpediente() throws Exception;
public String generarDNIFicticio()throws Exception;

}
