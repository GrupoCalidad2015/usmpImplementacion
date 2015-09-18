<%@page import="beans.DigitadorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style>
</head>
<body background="Recursos/imagenes/fondoPrincipal.jpg">
<%  
String msj=(String)request.getAttribute("msj");

%>
<%	
   DigitadorBean actualUser = (DigitadorBean) session.getAttribute("usuario"); 
%>
<table width="526" height="255" border="1" align="center">
  <tr><td align="center">
  <p>_________________________________________________________________
  <h2>MENSAJE:</h2>
    <h3><%=msj%></h3>
    <p>&nbsp;</p>
    <p>_________________________________________________________________</p>
  <%if(actualUser!=null){ %>
    <p><a href="javascript:history.go(-1)">Regresar</a></p>
    <%}%>
    </td>
  </tr>
</table>



</body>
</html>