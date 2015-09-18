package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.interfaces.HistoriaClinicaDao;
import daoFactory.DAOFactory;

import beans.HistoriaClinicaBean;

/**
 * Servlet implementation class AgregaHCPaciente
 */
@WebServlet("/AgregaHCPaciente")
public class AgregaHCPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AgregaHCPaciente() {
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
		PrintWriter out = response.getWriter();

		try {
			String edadIngreso = request.getParameter("txt_edadIngreso");
			String Procedencia = request.getParameter("txt_Procedencia");
			String departamento = request.getParameter("txt_Departamento");
			String provincia = request.getParameter("txt_Provincia");
			String distrito = request.getParameter("txt_Distrito");
			String referido = request.getParameter("txt_Referido");
			String adminicion = request.getParameter("txt_Adminicion").trim();
			String servicio = request.getParameter("txt_Servicio");
			String estado = request.getParameter("txt_Estado");
			String trim = request.getParameter("txt_Trim");
			String edadGestante = request.getParameter("txt_EdadGestante");
			String fUR = request.getParameter("txt_FUR").trim();
			String primagesta = request.getParameter("txt_Primagesta");
			String primParto = request.getParameter("txt_primParto");
			String medico = request.getParameter("txt_Medico");
			String pes = request.getParameter("txt_pes");
			String pesFam = request.getParameter("txt_pesFam");
			String ant1 = request.getParameter("txt_Ant1");
			String ant2 = request.getParameter("txt_Ant2");
			String diagInter = request.getParameter("txt_DiagInter");
			String sistCompro = request.getParameter("txt_SistCompro");
			String cesariaUCI = request.getParameter("txt_CesariaUCI");
			String tipoEfer = request.getParameter("txt_TipoEfer");
			String GP = request.getParameter("txt_GP");
			String exp = request.getParameter("txt_exp");

			if (adminicion.length() <= 0) {

				request.setAttribute("msj", " Campo Admicion invalido");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);

			} else if (fUR.length() <= 0) {
				request.setAttribute("msj", " Campo FUR invalido");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);

			} else {

				HistoriaClinicaBean hc = new HistoriaClinicaBean();

				hc.setEdadIngreso(edadIngreso);
				hc.setProcedencia(Procedencia);
				hc.setDepartamento(departamento);
				hc.setProvincia(provincia);
				hc.setDistrito(distrito);
				hc.setReferido(referido);
				hc.setAdminicion(adminicion);
				hc.setServicio(servicio);
				hc.setEstado(estado);
				hc.setTrim(trim);
				hc.setEdadGestante(edadGestante);
				hc.setfUR(fUR);
				hc.setPrimagesta(primagesta);
				hc.setPrimParto(primParto);
				hc.setMedico(medico);
				hc.setPes(pes);
				hc.setPesFam(pesFam);
				hc.setAnt1(ant1);
				hc.setAnt2(ant2);
				hc.setDiagInter(diagInter);
				hc.setSistCompro(sistCompro);
				hc.setCesariaUCI(cesariaUCI);
				hc.setTipoEfer(tipoEfer);
				hc.setGP(GP);
				hc.setExpediente(exp);

				DAOFactory dao = DAOFactory.obtenerFactory(DAOFactory.MySql);
				HistoriaClinicaDao fichaPaciente1 = dao.obtenerHC();
				boolean flag = fichaPaciente1.agregarHC(hc);

				if (flag) {
					request.setAttribute("msj", "Su registro fue satisfactorio");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);
				} else {
					request.setAttribute("msj", "Ocurrio un error");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);
				}

			}

		} catch (Exception e) {

		}

	}
}
