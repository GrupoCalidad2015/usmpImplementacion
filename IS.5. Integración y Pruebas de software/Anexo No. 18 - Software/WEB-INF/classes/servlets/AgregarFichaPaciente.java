package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.FichaPacienteBean;

import dao.interfaces.FichaPacienteDao;
import daoFactory.DAOFactory;

@WebServlet("/AgregarFichaPaciente")
public class AgregarFichaPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AgregarFichaPaciente() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		try {

			String dni = request.getParameter("txt_dni").trim();
			String nombre = request.getParameter("txt_nombre").trim();
			String apelldioPaterno = request
					.getParameter("txt_apelldioPaterno").trim();
			String apellidoMaterno = request
					.getParameter("txt_apellidoMaterno").trim();

			String dia = request.getParameter("txt_dia").trim();
			String mes = request.getParameter("txt_mes").trim();
			String años = request.getParameter("txt_año").trim();

			String numHijos = request.getParameter("txt_numHIjos").trim();
			String numEmbarazos = request.getParameter("txt_numEmbarazos")
					.trim();
			String numPartos = request.getParameter("txt_numPartos").trim();
			String numCesareas = request.getParameter("txt_numCesareas").trim();
			String numAbortos = request.getParameter("txt_numAbortos").trim();

			String departamento = request.getParameter("txt_departamento");
			String provincia = request.getParameter("txt_provincia");
			String distrito = request.getParameter("txt_distrito");

			String direccion = request.getParameter("txt_direccion").trim();
			String numCasa = request.getParameter("txt_numCasa").trim();
			String numEmergencia = request.getParameter("txt_numEmergencia")
					.trim();
			String numCelular = request.getParameter("txt_numCelular").trim();
			String email = request.getParameter("txt_email").trim();
			String dominio = request.getParameter("txt_dominio");

			DAOFactory dao1 = DAOFactory.obtenerFactory(DAOFactory.MySql);
			FichaPacienteDao fichaPaciente1 = dao1.obtenerFichaPaciente();
			boolean flagDni = fichaPaciente1.prebuscarDni(dni);

			DAOFactory dao2 = DAOFactory.obtenerFactory(DAOFactory.MySql);
			FichaPacienteDao fichaPaciente2 = dao2.obtenerFichaPaciente();
			int flagDni1 = fichaPaciente2.esAlfaNumericaDNI(dni);
			
			
			DAOFactory dao3 = DAOFactory.obtenerFactory(DAOFactory.MySql);
			FichaPacienteDao fichaPaciente3 = dao3.obtenerFichaPaciente();
			int expediente = fichaPaciente3.generarNumeroExpediente();
			

			String fecNac = años + "-" + mes + "-" + dia;
			
		if(email.length()==0){
				
				dominio="";
			}else{
				email=email+dominio;
			}
	

			if (dni.length() == 0 && nombre.length() == 0
					&& apelldioPaterno.length() == 0
					&& apellidoMaterno.length() == 0 && numHijos.length() == 0
					&& numEmbarazos.length() == 0 && numPartos.length() == 0
					&& numCesareas.length() == 0 && direccion.length() == 0
					&& numEmergencia.length() == 0) {

				request.setAttribute("msj", "Campos obligatorios vacios");

				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);

			}

			else if (dni.length() != 8) {

				request.setAttribute("msj", " Campo DNI invalido");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);

			}

			else if (flagDni1 == 1) {

				request.setAttribute("msj",
						" Los CARACTERES del DNI NO son correctos");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);
			}

			else if (flagDni) {

				request.setAttribute("msj", "DNI Ya existente ");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);
			}

			else if (nombre.length() == 0 || apelldioPaterno.length() == 0
					|| apellidoMaterno.length() == 0 || numHijos.length() == 0
					|| numEmbarazos.length() == 0 || numPartos.length() == 0
					|| numCesareas.length() == 0 || direccion.length() == 0
					|| numEmergencia.length() == 0

			) {

				if (nombre.length() == 0) {
					request.setAttribute("msj", "Campo NOMBRE invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (apelldioPaterno.length() == 0) {
					request.setAttribute("msj",
							"Campo Apellido Paterno invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (apellidoMaterno.length() == 0) {
					request.setAttribute("msj",
							"Campo Apellido Materno invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (numHijos.length() == 0) {
					request.setAttribute("msj",
							"Campo Numero de Hijos invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (numEmbarazos.length() == 0) {
					request.setAttribute("msj",
							"Campo Numero de Embarazos invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (numPartos.length() == 0) {
					request.setAttribute("msj",
							"Campo Numero de Partos invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (numCesareas.length() == 0) {
					request.setAttribute("msj",
							"Campo Numero de Cesareas invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (numAbortos.length() == 0) {
					request.setAttribute("msj",
							"Campo Numero de Abortos invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (direccion.length() == 0) {
					request.setAttribute("msj", "Campo Direccion invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if (numEmergencia.length() == 0) {
					request.setAttribute("msj",
							"Campo Numero de Emergencia invalido");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

			}

			else if ((Integer.parseInt(numEmbarazos) != Integer
					.parseInt(numPartos)
					+ Integer.parseInt(numCesareas)
					+ Integer.parseInt(numAbortos))
					|| (Integer.parseInt(numEmbarazos) < 0
							|| Integer.parseInt(numPartos) < 0
							|| Integer.parseInt(numCesareas) < 0 || Integer
							.parseInt(numAbortos) < 0)) {

				if (Integer.parseInt(numEmbarazos) != Integer
						.parseInt(numPartos)
						+ Integer.parseInt(numCesareas)
						+ Integer.parseInt(numAbortos)) {

					request.setAttribute(
							"msj",
							"Cantidad incorrecta, la cantidad de Embarazos no coincide con la cantidad de partos,cesareas y/o abortos");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);

				}

				if ((Integer.parseInt(numEmbarazos) < 0)) {

					request.setAttribute("msj",
							"Cantidad incorrecta, ingrese una cantidad de Embarazos mayor o igual a 0");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);
				}

				if ((Integer.parseInt(numPartos) < 0)) {

					request.setAttribute("msj",
							"Cantidad incorrecta,ingrese una cantidad de Partos mayor o igual a 0");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);
				}

				if ((Integer.parseInt(numCesareas) < 0)) {

					request.setAttribute("msj",
							"Cantidad incorrecta ,ingrese una cantidad de Cesareas mayor o igual a 0");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);
				}

				if ((Integer.parseInt(numAbortos) < 0)) {

					request.setAttribute("msj",
							"Cantidad incorrecta,ingrese una cantidad de Abortos mayor o igual a 0");
					request.getRequestDispatcher("/mensaje.jsp").forward(
							request, response);
				}

			} else if (Integer.parseInt(numHijos) > 99
					|| Integer.parseInt(numHijos) < 0) {

				request.setAttribute("msj", "Numero de Hijos Icorrecto");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);
			
				
				
			} else if (numEmergencia.length() < 9
					&& numEmergencia.length() < 7) {

				request.setAttribute("msj",
						"Cantidad de digitos del Numero de Emergencia incorrecta");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);
			
			} else {

				FichaPacienteBean fichaPaciente = new FichaPacienteBean();
				fichaPaciente.setDni(dni);
				fichaPaciente.setNombre(nombre);
				fichaPaciente.setApellidoPaterno(apelldioPaterno);
				fichaPaciente.setApellidoMaterno(apellidoMaterno);
				fichaPaciente.setNroHijos(Integer.parseInt(numHijos));
				fichaPaciente.setNroEmbarazos(Integer.parseInt(numEmbarazos));
				fichaPaciente.setNroPartos(Integer.parseInt(numPartos));
				fichaPaciente.setNroCesareas(Integer.parseInt(numCesareas));
				fichaPaciente.setNroAbortos(Integer.parseInt(numAbortos));
				fichaPaciente.setDireccion(direccion);
				fichaPaciente.setNumCasa(numCasa);
				fichaPaciente.setNumEmergencia(numEmergencia);
				fichaPaciente.setNumCelular(numCelular);
				fichaPaciente.setEmail(email);
				fichaPaciente.setFecNac(fecNac);

				fichaPaciente.setDepartamento(departamento);
				fichaPaciente.setProvincia(provincia);
				fichaPaciente.setDistrito(distrito);
				
				fichaPaciente.setExpediente(""+expediente);

				DAOFactory dao = DAOFactory.obtenerFactory(DAOFactory.MySql);
				FichaPacienteDao fichaPaciente4 = dao.obtenerFichaPaciente();
				boolean flag = fichaPaciente4.agregarPaciente(fichaPaciente);

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

			out.print(e.getMessage());
		}
	}
}
