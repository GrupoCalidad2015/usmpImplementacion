package dao.interfaces;

import java.util.Vector;


import beans.HistoriaClinicaBean;



public interface HistoriaClinicaDao {
	public boolean agregarHC(HistoriaClinicaBean hc) throws Exception;
	public Vector<HistoriaClinicaBean> listarHCxDato(String dato) throws Exception;
}
