package servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.FichaPacienteBean;
import beans.HistoriaClinicaBean;
import dao.interfaces.FichaPacienteDao;
import dao.interfaces.HistoriaClinicaDao;
import daoFactory.DAOFactory;

/**
 * Servlet implementation class listarDatosPaciente
 */
@WebServlet("/listarDatosPaciente")
public class listarDatosPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public listarDatosPaciente() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String txt_tipoDato = request.getParameter("txt_tipoDato");
		String txt_dato = request.getParameter("txt_dato").trim();

		if (txt_dato.length() == 0) {
			request.setAttribute("msj", " Campo de busqueda vacio");
			request.getRequestDispatcher("/mensaje.jsp").forward(request,
					response);
		}
		
		
			try {
				DAOFactory dao = DAOFactory.obtenerFactory(DAOFactory.MySql);
				DAOFactory dao1 = DAOFactory.obtenerFactory(DAOFactory.MySql);

				FichaPacienteDao fichaPaciente1 = dao1.obtenerFichaPaciente();
				boolean flagDni = fichaPaciente1.prebuscarDni(txt_dato);

				FichaPacienteDao pacienteDao = dao.obtenerFichaPaciente();
				Vector<FichaPacienteBean> pacientes = pacienteDao.listarxDato(
						txt_tipoDato, txt_dato);

				
				
				
				if (flagDni !=false) {
					HistoriaClinicaDao hcPaciente=dao.obtenerHC();
					Vector<HistoriaClinicaBean> hc=hcPaciente.listarHCxDato(pacientes.get(0).getExpediente());

					if (pacientes.size() > 0) {
						
						request.setAttribute("pacientes", pacientes);
						request.setAttribute("hc",hc);
						request.getRequestDispatcher("/consultarpaciente.jsp")

						.forward(request, response);

					} else {
						request.setAttribute("msj", "No se encontro paciente ");

						request.getRequestDispatcher("/mensaje.jsp").forward(
								request, response);
					}
				} else{
				
					request.setAttribute("msj", "No se encontro paciente ");

					request.getRequestDispatcher("/mensaje.jsp").forward(request,
							response);
				}
				

			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		}
	}

