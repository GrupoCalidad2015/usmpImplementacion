package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.DigitadorBean;
import dao.interfaces.DigitadorDao;

import daoFactory.DAOFactory;

/**
 * Servlet implementation class loginLogout
 */
@WebServlet("/loginLogout")
public class loginLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginLogout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession sesiones = request.getSession();
			sesiones.removeAttribute("usuario");
			
			response.sendRedirect("index.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		 String usuario = request.getParameter("txt_usuario").trim();
        String contraseña = request.getParameter("txt_contraseña").trim();
        
		if(usuario.length()==0 || contraseña.length()==0){
			request.setAttribute("msj",  "Ocurrio un error, falta llenar algun campo");
			
			request.getRequestDispatcher("/mensaje.jsp")
			.forward(request, response);
		}else{
 
           try {
              
               
               DAOFactory dao = 
   					DAOFactory.obtenerFactory(DAOFactory.MySql);
   			DigitadorDao digitadorDao = dao.obtenerDigitador();

   			DigitadorBean user = digitadorDao.obtenerDigitador(usuario, contraseña);
               if (user != null) {
            	   HttpSession sesiones = request.getSession();
   				      sesiones.setAttribute("usuario", user);
          
                 request.getRequestDispatcher("/menuPrincipal.jsp").forward(request, response);	
                       
	                       
                       
               } else {
            	   request.setAttribute("msj",  "Usuario no encontrado");
            	  
       			request.getRequestDispatcher("/mensaje.jsp")
       			.forward(request, response);
               }
               
           } catch (Exception ex) {
           	out.print(ex.getMessage());
           }
	}

	}
	}
