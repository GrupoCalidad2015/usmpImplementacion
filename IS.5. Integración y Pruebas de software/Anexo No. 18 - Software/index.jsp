<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="Recursos/imagenes/fondoPrincipal.jpg">
<table width="449" height="328" border="1" align="center">
  <tr>
    <td width="402" height="94" align="center"><p><a href="index.jsp"><img  src="Recursos/imagenes/logo.jpg" width="106" height="89" border="0"  align="left" /></a></p>
    <h2>&nbsp;</h2>
    <h2>Centro Medico Huarochiri</h2></td>
  </tr>
  <tr>
    <td height="135">
	<form action="loginLogout" method="post">
	 <h3>  Usuario:
        <label>
        <input type="text" name="txt_usuario">
      </label>
    </h3>
    <h3>Contrase&ntilde;a:
      <input type="password" name="txt_contraseña">
    </h3>
    <p><input type="submit" name="Submit" value="Ingresar" /></p>
	</form></td>
  </tr>
  <tr>
  <td height="89" align="center"><br>Copyright &copy; 2014 Jonathan Jesus Pinto Valiente<br >
    Todos los derechos reservados.</td>
  </tr>
</table>

</body>

</html>