

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="beans.DigitadorBean"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
<%	
   DigitadorBean actualUser = (DigitadorBean) session.getAttribute("usuario"); 
%>
<body background="Recursos/imagenes/fondoPrincipal.jpg">

<table width="969" height="612" border="1" align="center"  >
  <tr align="center">
    <td width="724" height="54"  >
    
	  <p><a href="menuPrincipal.jsp"><img src="Recursos/imagenes/logo.jpg" width="106" height="89" border="0"  align="left" /></a></p>
	  
    <H2 align="justify"><br />Centro Medico Huarochiri</H2></td>
	 
    <td width="229" border  ><p><h3>Digitador:</h3> </p>
    <p><%=actualUser.getApeDig() %>, <%=actualUser.getNomDig() %></p>
	 <p><a href="<%=request.getContextPath() %>/loginLogout">cerrar sesion</a></p></td>
  </tr>
  <tr align="center">
    <td height="43" colspan="2">
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
    <td height="373" colspan="2">
	<table width="582" height="268" border="0" align="center" >
  <tr>
    <td colspan="2"><h2>Bienvenido al Registro de Paciente , selecione que tipo de registro realizara:</h2></td>
    </tr>
  <tr >
    <td  >
	<div class="botones" align="center">
	<ul >
	<li ><a href="registrarPacienteDNI.jsp" ><h3>Paciente con DNI</h3></a></li>
	</ul>
	</div>	</td>
    <td align="center">
	<div class="botones" align="center">
	<ul>
	<li><a  href="registrarPacienteDNIFicticio.jsp"><h3>Paciente sin DNI</h3></a></li>
	</ul></div>	</td>
  </tr>
</table>	</td>
  </tr>
  <tr align="center">
    <td height="89" colspan="2"><br>Copyright &copy; 2014 Jonathan Jesus Pinto Valiente<br >
    Todos los derechos reservados.</td>
  </tr>
</table>



</body>
</html>
