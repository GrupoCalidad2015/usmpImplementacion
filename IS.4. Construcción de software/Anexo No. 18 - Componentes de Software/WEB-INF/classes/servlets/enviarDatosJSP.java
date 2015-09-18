package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class enviarDatosJSP
 */
@WebServlet("/enviarDatosJSP")
public class enviarDatosJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enviarDatosJSP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dato=request.getParameter("dato");		
		String dato1=request.getParameter("dato1");
		
	
		
		
		try {
			if(dato.equalsIgnoreCase("sin data")|| dato.equalsIgnoreCase("sin data")){
				request.setAttribute("msj", " No ingreso dato para la busqueda");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);
			}
			else if(dato!=null && dato1!=null ){
				request.setAttribute("dato1", dato1);
				request.setAttribute("dato", dato);
				request.getRequestDispatcher("/registrarHC.jsp")
				.forward(request, response);
				
			}else{
				request.setAttribute("msj", " Ocurrio un error");
				request.getRequestDispatcher("/mensaje.jsp").forward(request,
						response);
				
			}
		
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
