
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="beans.DigitadorBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%	
   DigitadorBean actualUser = (DigitadorBean) session.getAttribute("usuario"); 
%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<style type="text/css">
* {
margin:0px;
padding:0px;
} 

.panel{
width:960px;
beight:40px;
margin:50px auto auto auto;
}

.botones li {
list-style:none;
float:left;
width:192px;
height:40px;
background-color: #3795A6;

text-align:center;
line-height:40px;
display:block;
}

.botones li a {
color: #000000  ;
text-decoration:none;
display:block;

}

.botones li a:hover{
background-color: #95C7D7;
color: #FFFFFF;

}


</style>

<body background="Recursos/imagenes/fondoPrincipal.jpg">

<table width="979" height="1554" border="1" align="center"  >
  <tr align="center">
    <td width="730" height="54"  >
    
	  <p><a href="menuPrincipal.jsp"><img src="Recursos/imagenes/logo.jpg" width="106" height="89" border="0"  align="left" /></a></p>
	  
    <H2 align="justify"><br />Centro Medico Huarochiri</H2></td>
	 
    <td width="233" border  ><p><h3>Digitador:</h3> </p>
      <p><%=actualUser.getApeDig() %>, <%=actualUser.getNomDig() %></p>
    <p><a href="<%=request.getContextPath() %>/loginLogout">cerrar sesion</a></p></td>
  </tr>
  <tr align="center">
    <td height="42" colspan="2">
	<div class="botones" align="center">
	<ul>
	<li><a href="menuPrincipal.jsp"><h3>Inicio</h3></a></li>
	<li><a href="registrarPaciente.jsp"><h3>Registrar Paciente</h3></a></li>
	<li><a href="historiaClinica.jsp">
	<h3>Historia Clinica </h3>
	</a></li>
	<li><a href="consultarpaciente.jsp"><h3>Consultar Paciente</h3></a></li>
	<li><a href="contactenos.jsp"><h3>Contactenos</h3></a></li>
	</ul></div>	</td>
  </tr>
   <tr align="center">
   <form id="form1" name="form1" method="post" action="AgregarFichaPacienteDNIFIC" >
    <td height="640" colspan="2" align="center"><P>
    <H2>&nbsp;</H2>
    <H2>&nbsp;</H2>
    <H2><u>Registrar Paciente</u></H2>
    <H2>&nbsp;</H2>
      </P>
        <p>
        <p>
        <table width="846" border="0"  align="center">
  <tr>
    <td colspan="3" align="left"><H3>Datos de paciente:</H3>
      <H3>_____________________________________________________________________________________________</H3></td>
    </tr>
  <tr>
    <td width="308" align="right"><p >&nbsp;</p>
      <p >&nbsp;</p>
      <p >Nombre:</p>
	   <p >&nbsp;</p>
      <p >Apellido Paterno:</p>
      <p >&nbsp;</p>
      <p >Apellido Materno:</p>
      <p >&nbsp;</p>
      <p >Fecha de Nacimiento: </p>
      <p >&nbsp;</p>
      <p >N&ordm; de Hijos:</p>
      <p >&nbsp;</p>
      <p >N&ordm; de Embarazos:</p>
      <p >&nbsp;</p>
      <p >N&ordm; de Partos Naturales: </p>
      <p >&nbsp;</p>
      <p >N&ordm; de Cesareas:</p>
      <p >&nbsp;</p>
      <p >N&ordm; Abortos:</p>
      <p >&nbsp;  </p></td>
    <td width="490" align="left">
	<p>&nbsp;	  </p>
	<p>
	  <label>
	  <input type="hidden" name="txt_dni" value="DNIFicticio"/>
	  </label>
	</p>
	<p>&nbsp;</p>
	<p>
        <input type="text" name="txt_nombre" />
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_apelldioPaterno"  />
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_apellidoMaterno" />
      </p>
      <p>&nbsp;</p>
      <p>
        <label>
        <select name="txt_dia">
		<option value="01">01</option>
	                    <option value="02">02</option>
	                    <option value="03">03</option>
	                    <option value="04">04</option>
	                    <option value="05">05</option>
	                    <option value="06">06</option>
	                    <option value="07">07</option>
	                    <option value="08">08</option>
	                    <option value="09">09</option>
	                    <option value="10">10</option>
	                    <option value="11">11</option>
	                    <option value="12">12</option>
	                    <option value="13">13</option>
	                    <option value="14">14</option>
	                    <option value="15">15</option>
	                    <option value="16">16</option>
	                    <option value="17">17</option>
	                    <option value="18">18</option>
	                    <option value="19">19</option>
	                    <option value="20">20</option>
	                    <option value="21">21</option>
	                    <option value="22">22</option>
	                    <option value="23">23</option>
	                    <option value="24">24</option>
	                    <option value="25">25</option>
	                    <option value="26">26</option>
	                    <option value="27">27</option>
	                    <option value="28">28</option>
	                    <option value="29">29</option>
	                    <option value="30">30</option>
	                    <option value="31">31</option>
        </select>
        </label>
       Dias  
       <select name="txt_mes">
	  <option value="01">Enero</option>
	                    <option value="02">Febrero</option>
	                    <option value="03">Marzo</option>
	                    <option value="04">Abril</option>
	                    <option value="05">Mayo</option>
	                    <option value="06">Junio</option>
	                    <option value="07">Julio</option>
	                    <option value="08">Agosto</option>
	                    <option value="09">Septiembre</option>
	                    <option value="10">Octubre</option>
	                    <option value="11">Noviembre</option>
	                    <option value="12">Diciembre</option>
        </select>
       Mes
       <select name="txt_a�o">
      
       <option value="2003">2003</option>
       <option value="2002">2002</option>
       <option value="2001">2001</option>
	   <option value="2000">2000</option>
	                    <option value="1999" >1999</option>
	                    <option value="1998">1998</option>
	                    <option value="1997">1997</option>
	                    <option value="1996">1996</option>
	                    <option value="1995">1995</option>
						<option value="1994">1994</option>
						<option value="1993">1993</option>
						<option value="1992">1992</option>
						<option value="1991">1991</option>
						<option value="1990">1990</option>
						<option value="1989">1989</option>
						<option value="1988">1988</option>
						<option value="1987">1987</option>
						<option value="1986">1986</option>
						<option value="1985">1985</option>
						<option value="1984">1984</option>
						<option value="1983">1983</option>
						<option value="1982">1982</option>
						<option value="1981">1981</option>
						<option value="1980">1980</option>
						<option value="1979">1979</option>
						<option value="1978">1978</option>
						<option value="1977">1977</option>
						<option value="1976">1976</option>
						<option value="1975">1975</option>
						<option value="1974">1974</option>
						<option value="1973">1973</option>
						<option value="1972">1972</option>
						<option value="1971">1971</option>
						<option value="1970">1970</option>
						<option value="1969">1969</option>
						<option value="1968">1968</option>
						<option value="1967">1967</option>
						<option value="1966">1966</option>
						<option value="1965">1965</option>
						<option value="1964">1964</option>
						<option value="1963">1963</option>
						<option value="1962">1962</option>
						<option value="1961">1961</option>
						<option value="1960">1960</option>
        </select>
      A&ntilde;o</p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_numHIjos" value="0"/>
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_numEmbarazos" value="0" />
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_numPartos" value="0"  />
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_numCesareas" value="0" />
      </p>
      <p>&nbsp; </p>
      <p>
        <input type="text" name="txt_numAbortos" value="0" />
      </p>
      <p>&nbsp; </p></td>
    <td width="34" >
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td colspan="3" align="left"><h3>Direccion:</h3>
      <p>_________________________________________________________________________________________________________</p></td>
    </tr>
  <tr >
    <td align="right"><p>&nbsp;</p>
      <p>Departamento: </p>
      <p>&nbsp;</p>
      <p>Provincia :</p>
      <p>&nbsp;</p>
      <p>Distrito: </p>
      <p>&nbsp;</p> 
      <p>Direccion:</p></td>
    <td colspan="2" align="left"><p>&nbsp;</p>
      <p>
	  
      <select name="txt_departamento" >
	   <option value="Lima">Lima</option> 
	  </select>
    </p>
      <p>&nbsp;</p>
      <p>
	  
         <select name="txt_provincia">
		 <option  value="Lima">Lima</option> 
		 </select>
      </p>
      <p>&nbsp;</p>
      <p>
	  <select name="txt_distrito">
	  <option value="La Molina" >La Molina</option>
	   <option value="ATE" >ATE</option>
	   </select>
          </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_direccion" />
        </p></td>
    </tr>
  <tr>
    <td colspan="3"  align="left"><p><h3>Contactos: </h3></p>
      <p>_________________________________________________________________________________________________________</p></td>
    </tr>
  <tr>
    <td align="right"><p>&nbsp;</p>
      <p>Numero de Casa: </p>
      <p>&nbsp; </p>
      <p>Numero de Emergenncia: </p>
      <p>&nbsp;</p>
      <p>Numero de Celular: </p>
      <p>&nbsp;</p>
      <p>E-mail: </p>
      <p></p></td>
    <td colspan="2" align="left"><p>&nbsp;</p>
      <p>
        <input type="text" name="txt_numCasa" />
        </p>
      <p>&nbsp;</p>
      <p>
          <input type="text" name="txt_numEmergencia" />
          </p>
      <p>&nbsp;</p>
      <p>
          <input type="text" name="txt_numCelular" />
          </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="txt_email" />
        <label>
        <select name="txt_dominio">
		<option value="">@gmail.com</option>
		<option>@hotmail.com</option>
		<option>@yahoo.com</option>
        </select>
        </label>
      </p></td>
    </tr>
  <tr>
    <td height="84" colspan="3" align="center"><p>
       <!--   <input type="submit" name="Submit" value="Salir" /> -->
        <input type="submit" name="Submit2" value="Guarda" />
    </p></td>
    </tr>
</table>

        
    
        </p>
        <p >&nbsp;</p>
        <p >&nbsp;</p>
        <p><H3>&nbsp;</H3>
        <H3>&nbsp;</H3>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p align="center">&nbsp;</p>
    </form>   
  </tr>
  <tr align="center">
    <td height="89" colspan="2"><br>Copyright &copy; 2014 Jonathan Jesus Pinto Valiente<br >
    Todos los derechos reservados.</td>
  </tr>
</table>

	
	
	
	</td>
  </tr>
<tr align="center">
  <td height="89"><br></td>
</tr>
</html>
