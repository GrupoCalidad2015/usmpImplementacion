<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="beans.DigitadorBean"%>

	
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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
    <td width="814" height="54"  >
    
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
    <td height="373" colspan="2"><form action="" method="get">
	
	<table width="691" height="632" border="0" align="center">
  <tr>
    <td height="53" colspan="4" align="left">
	<p>
	<h2 align="center">Registro de Alta</h2>
	<p align="center">&nbsp; </p>
	</p>
	<pre>Nombre de paciente                                                  #numeroHC

</pre></td>
    </tr>
  <tr>
    <td width="164" height="471" align="right"><p>Hemoglobina:    </p>
	<p>&nbsp;</p>
      <p>Leucositos:      </p>
      <p>&nbsp;</p>
      <p>Palquetas:      </p>
      <p>&nbsp;</p>
      <p>TP
        :      </p>
      <p>&nbsp;</p>
      <p>TTPa:      </p>
      <p>&nbsp;</p>
      <p>Fibronogeno:      </p>
      <p>&nbsp;</p>
      <p>Creatitinina:      </p>
      <p>&nbsp;</p>
      <p>TGO:      </p>
      <p>&nbsp;</p>
      <p>TGP:      </p>
      <p>&nbsp;</p>
      <p>Proteinas:      </p></td>
    <td width="196"  align="left"><p>&nbsp;
        </p>
      <p>
        <input type="text" name="textfield6" />
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield7" />
        </p>
      <p>&nbsp;</p>
      <p>
          <input type="text" name="textfield3" />
          </p>
      <p>&nbsp;</p>
      <p>
          <input type="text" name="textfield5" />
      </p>
      <p>&nbsp;</p>
      <p>
            <input type="text" name="textfield" />
      </p>
      <p>&nbsp;</p>
      <p>
            <input type="text" name="textfield4" />
      </p>
      <p>&nbsp;</p>
      <p>
            <input type="text" name="textfield8" />
            </p>
      <p>&nbsp;</p>
      <p>
            <input type="text" name="textfield9" />
      </p>
      <p>&nbsp;</p>
      <p>
            <input type="text" name="textfield10" />
            </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield2" />
        </p>
      <p>&nbsp;</p>      </td>
    <td width="138" align="right" >
	<p>Bilirubina Toal:    </p>
      <p>&nbsp;</p>
      <p>Bilirubina Directa:      </p>
      <p>&nbsp;</p>
      <p>Bilirubina Indirecta:      </p>
      <p>&nbsp;</p>
      <p>Urocultivo Positivo:
        <label></label>
      </p>
      <p>&nbsp;</p>
      <p>PA.Sistolica:      </p>
      <p>&nbsp;</p>
      <p>PA.Diastolica:      </p>
      <p>&nbsp;</p>
      <p>Noradrenalina:      </p>
      <p>&nbsp;</p>
      <p>Sulfato de Magneio:      </p>
      <p>&nbsp;</p>
      <p>Metildopa:</p></td>
    <td width="165" align="left"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield14" />
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield15" />
        </p>

      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield16" />
      </p>
      <p>&nbsp;</p>
      <p>
        <select name="select">
        </select>
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield17" />
        </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield13" />
        </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield12" />
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield11" />
        </p>
      <p>&nbsp;</p>
      <p>
        <input type="text" name="textfield18" />
      </p>
      <p>&nbsp;        </p></td>
  </tr>
  
  <tr>
    <td height="40" colspan="4" align="center"><label>
      <input type="submit" name="Submit" value="Guardar" />
    </label></td>
    </tr>
</table>

	
	
	
	</form>	</td>
  </tr>
  <tr align="center">
    <td height="89" colspan="2"><br>Copyright &copy; 2014 Jonathan Jesus Pinto Valiente<br >
    Todos los derechos reservados.</td>
  </tr>
</table>
</html>
