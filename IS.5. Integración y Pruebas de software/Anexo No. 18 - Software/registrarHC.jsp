

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
	margin: 0px;
	padding: 0px;
}

.panel {
	width: 960px;
	beight: 40px;
	margin: 50px auto auto auto;
}

.botones li {
	list-style: none;
	float: left;
	width: 192px;
	height: 40px;
	background-color: #3795A6;
	text-align: center;
	line-height: 40px;
	display: block;
}

.botones li a {
	color: #000000;
	text-decoration: none;
	display: block;
}

.botones li a:hover {
	background-color: #95C7D7;
	color: #FFFFFF;
}
s
</style>
<%
	DigitadorBean actualUser = (DigitadorBean) session
			.getAttribute("usuario");
%>
<%
	String dato = (String) request.getAttribute("dato");
	String dato1 = (String) request.getAttribute("dato1");
%>
<body background="Recursos/imagenes/fondoPrincipal.jpg">

	<table width="969" height="1016" border="1" align="center">
		<tr align="center">
			<td width="724" height="54">

				<p>
					<a href="menuPrincipal.jsp"><img
						src="Recursos/imagenes/logo.jpg" width="106" height="89"
						border="0" align="left" /></a>
				</p>

				<H2 align="justify">
					<br />Centro Medico Huarochiri
				</H2>
			</td>

			<td width="229" border><p>
					<h3>Digitador:</h3>
				</p>
				<p><%=actualUser.getApeDig()%>,
					<%=actualUser.getNomDig()%></p>
				<p>
					<a href="<%=request.getContextPath()%>/loginLogout">cerrar
						sesion</a>
				</p></td>
		</tr>
		<tr align="center">
			<td height="43" colspan="2">
				<div class="botones" align="center">
					<ul>
						<li><a href="menuPrincipal.jsp"><h3>Inicio</h3></a></li>
						<li><a href="registrarPaciente.jsp"><h3>Registrar
									Paciente</h3></a></li>
						<li><a href="historiaClinica.jsp">
								<h3>Historia Clinica</h3>
						</a></li>
						<li><a href="consultarpaciente.jsp"><h3>Consultar
									Paciente</h3></a></li>
						<li><a href="contactenos.jsp"><h3>Contactenos</h3></a></li>
					</ul>
				</div>
			</td>
		</tr>
		<tr align="center">
			<td height="781" colspan="2">
				<form action="AgregaHCPaciente" method="post">

					<table width="691" height="720" border="0" align="center">
						<tr>
							<td height="83" colspan="4" align="left">
								<p>
									<h2 align="center">Registro de Nuevo Historial Clinico</h2>
									<p align="center">&nbsp;</p>
								</p> <pre>            <%=dato%>                                                 <%=dato1%> 
 
</pre>  <input type="hidden" name="txt_exp" value="<%=dato1%>"/>
							</td>
						</tr>
						<tr>
							<td width="169" height="471" align="right"><label>Edad Ingreso: <br /> <br />
									Procedencia: <br /> <br /> Departamento: <br /> <br />
									Provincia: <br /> <br /> Distrito: <br /> <br /> Referido
									del <br /> Centro Medico: <br /> <br /> admicion: <br /> <br />
									Servicio: <br /> <br /> Estado: <br /> <br /> TRIM: <br />
									<br /> Edad Gestacional: <br /> <br /> FUR: <br /> <br />
									Primigesta: <br /> <br /> <br />
						  </label></td>
						<td width="164" align="left"><p>
						    <select name="txt_edadIngreso">
						      <option value="Sin Dato">Sin Dato</option>
						      <option value="9 o menos">9 o menos</option>
						      <%
											for (int i = 10; i < 41; i++) {
										%>
						      <option value="<%=i%>años"><%=i%>
						        años								      </option>
						      <%
											}
										%>
						      <option value="40 o mas">40 o mas</option>
						      </select>
					        </p>
						  <p>&nbsp;</p>
								<p>
									<select name="txt_Procedencia">
										<option value="Adolescencia">Adolescencia</option>
										<option value="Servicio_01">Servicio_01</option>
										<option value="Servicio_02">Servicio_02</option>
										<option value="Servicio_03">Servicio_03</option>
										<option value="Servicio_04">Servicio_04</option>
										<option value="Servicio_05">Servicio_05</option>
										<option value="Centro Obstetrico">Centro Obstetrico</option>
										<option value="Otro">Otro</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Departamento">
										<option value="Lima">Lima</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Provincia">
										<option value="Lima">Lima</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Distrito">
										<option value="La Molina">
											La Molina
									  </option>
												<option value="Ate">
													Ate
									  </option>
														
									</select>
								</p>
							<p>&nbsp;</p>
						  <p>
	<select name="txt_Referido">
										<option value="Hospital Loayza">
											Hospital Loayza									  </option>
												<option value="Hospital Casimiro Ulloa">Hospital
													Casimiro Ulloa</option>
												<option value="Hospital 2 de Mayo">Hospital 2 de
													Mayo</option>
												<option value="Hospital Hipolito Unanue">Hospital
													Hipolito Unanue</option>
												<option value="Hospital Cayetano Herdia">Hospital
													Cayetano Herdia</option>
												<option value="Hospital Maria Auxiliadora">Hospital
													Maria Auxiliadora</option>
												<option value="Hospital Santa Rosa">Hospital Santa
													Rosa</option>
												<option value="Hospital Puente piedra">Hospital
													Puente piedra</option>
												<option value="Hospital Regional Norte">Hospital
													Regional Norte</option>
												<option value="Hospital Regional Centro">Hospital
													Regional Centro</option>
												<option value="Hospital Regional Sur">Hospital
													Regional Sur</option>
												<option value="Hospital Local Norte">Hospital Local
													Norte</option>
												<option value="Hospital Local Centro">Hospital
													Local Centro</option>
												<option value="Hospital Local Sur">Hospital Local
													Sur</option>
												<option value="Centro de Saludo Lima">Centro de
													Saludo Lima</option>
												<option value="Centro de Saludo Provincial">Centro
													de Saludo Provincial</option>
												<option value="Centro de Privada Lima">Centro de
													Privada Lima</option>
												<option value="Centro de Privada Provincial">Centro
													de Privada Provincial</option>
												<option value="Otro">Otro</option>
									</select>
						  </p>
						  <p>&nbsp; </p>
						  <p>
							    <label>
								  <input type="text" name="txt_Adminicion" value="YYYY/MM/DD"/>
						    </label>
							</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Servicio">
									<option value="Adolescencia">Adolescencia</option>
										<option value="Servicio_01">Servicio_01</option>
										<option value="Servicio_02">Servicio_02</option>
										<option value="Servicio_03">Servicio_03</option>
										<option value="Servicio_04">Servicio_04</option>
										<option value="Servicio_05">Servicio_05</option>
										<option value="Servicio_05">Servicio_05</option>
											<option value="Clinica IMP">Clinica IMP</option>
											<option value="Otro Servicio">Otro Servicio</option>
									<option value="Referido Otro Hosp.">Referido Otro Hosp.</option>
											<option value="Fallecida">Fallecida</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Estado">
									<option value="Gestante 1 TRIM">Gestante 1 TRIM</option>
									<option value="Gestante 2 TRIM">Gestante 2 TRIM</option>
									<option value="Gestante 3 TRIM">Gestante 3 TRIM</option>
									<option value="Puerpera Inmediata">Puerpera Inmediata</option>
									<option value="Puerpera Mediata">Puerpera Mediata</option>
									<option value="Post Aborto">Post Aborto</option>
									<option value="No Gestante">No Gestante</option>
								  </select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Trim">
									<option value="Primero">Primero</option>
									<option value="Segundo">Segundo</option>
									<option value="Tercero">Tercero</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_EdadGestante">
									<option value="Sin Dato">Sin Dato</option>
						      <option value="9 o menos">9 o menos</option>
						      <%
											for (int i = 10; i < 41; i++) {
										%>
						      <option value="<%=i%>años"><%=i%>
						        años								      </option>
						      <%
											}
										%>
						      <option value="40 o mas">40 o mas</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
								  <label>
								  <input type="text" name="txt_FUR" value="YYYY/MM/DD" />
								  </label>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Primagesta">
									<option value="No">No</option>
									<option value="No Aplica">No Aplica</option>
									<option value="Si">Si</option>
									<option value="Sin Dato">Sin Dato</option>
								
									</select>
								</p>
								<p>&nbsp;</p>
						  </td>
							<td width="165" align="right"><p>&nbsp;</p>
								<p>Prim.Parto:</p>
								<p>&nbsp;</p>
								<p>Medico de Admicion:</p>
								<p>&nbsp;</p>
								<p>PES:</p>
								<p>&nbsp;</p>
								<p>PES fam:</p>
								<p>&nbsp;</p>
								<p>Ant 1:</p>
								<p>&nbsp;</p>
								<p>Ant 2:</p>
								<p>&nbsp;</p>
								<p>Diagnostico Intermedio:</p>
								<p>&nbsp;</p>
								<p>Diagnostico Final:</p>
								<p>&nbsp;</p>
								<p>Sistema Comprometido:</p>
								<p>&nbsp;</p>
								<p>Cesaria UCI:</p>
								<p>&nbsp;</p>
								<p>Tipo enfermedad:</p>
								<p>&nbsp;</p>
								<p>Grupo Patologico:</p>
								<p>&nbsp;</p>
								<p>&nbsp;</p></td>
							<td width="165" align="left"><p>
									<select name="txt_primParto">
									<option value="No">No</option>
									<option value="No Aplica">No Aplica</option>
									<option value="Si">Si</option>
									<option value="Sin Dato">Sin Dato</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Medico">
									<option value="Jara">Jara</option>
									<option value="Moreles">Jara</option>
									<option value="Inga">Inga</option>
									<option value="Otro Medico">Otro Medico</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_pes">
									<option value="No">No</option>
									<option value="No Aplica">No Aplica</option>
									<option value="Si">Si</option>
									<option value="Sin Dato">Sin Dato</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_pesFam">
									<option value="No">No</option>
									<option value="No Aplica">No Aplica</option>
									<option value="Si">Si</option>
									<option value="Sin Dato">Sin Dato</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Ant1">
									<option value="Aborto Iterativo">Aborto Iterativo</option>
									<option value="Alergia Medicam">Alergia Medicam</option>
									<option value="Anemia Cronica">Anemia Cronica</option>
									<option value="Asma Bronquial">Asma Bronquial</option>
									<option value="Cardiapat Congenita">Cardiapat Congenita</option>
									<option value="Cesareada Anterior">Cesareada Anterior</option>
									<option value="Desnutricion">Desnutricion</option>
									<option value="Diabetes Mellitus">Diabetes Mellitus</option>
									<option value="Ecampsia">Ecampsia</option>
									<option value="Enfermedad Venerea">Enfermedad Venerea</option>
								<option value="Hipertencion Arterial">Hipertencion Arterial</option>
									<option value=" Neoplasia Maligna"> Neoplasia Maligna</option>
									<option value="Obesidad">Obesidad</option>
									<option value="Poliomelitis">Poliomelitis</option>
									<option value="Secuela Neurologica">Secuela Neurologica</option>
									<option value="Seropositiva VIH">Seropositiva VIH</option>
									<option value="Tuberculosis ">Tuberculosis</option>
									
									
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_Ant2">
									<option value="Aborto Iterativo">Aborto Iterativo</option>
									<option value="Alergia Medicam">Alergia Medicam</option>
									<option value="Anemia Cronica">Anemia Cronica</option>
									<option value="Asma Bronquial">Asma Bronquial</option>
									<option value="Cardiapat Congenita">Cardiapat Congenita</option>
									<option value="Cesareada Anterior">Cesareada Anterior</option>
									<option value="Desnutricion">Desnutricion</option>
									<option value="Diabetes Mellitus">Diabetes Mellitus</option>
									<option value="Ecampsia">Ecampsia</option>
									<option value="Enfermedad Venerea">Enfermedad Venerea</option>
								<option value="Hipertencion Arterial">Hipertencion Arterial</option>
									<option value=" Neoplasia Maligna"> Neoplasia Maligna</option>
									<option value="Obesidad">Obesidad</option>
									<option value="Poliomelitis">Poliomelitis</option>
									<option value="Secuela Neurologica">Secuela Neurologica</option>
									<option value="Seropositiva VIH">Seropositiva VIH</option>
									<option value="Tuberculosis ">Tuberculosis</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_DiagInter">
									<option value"Abdomen agudo">Abdomen agudo</option>
									<option value="ACV Hemorragico">ACV Hemorragico</option>
									<option value="ACV Isquemico">ACV Isquemico</option>
									<option value="Arritmia cardiaca">Arritmia cardiaca</option>
									<option value="Cetoacidosis DBT">Cetoacidosis DBT</option>
									<option value="Choque Anafilactico">Choque Anafilactico</option>
									<option value="Coque Hemoragico">Coque Hemoragico</option>
									<option value="Choque Hipovolemico">Choque Hipovolemico</option>
									<option value="Choque Septico">Choque Septico</option>
									<option value="Coma de Edad"> Coma de Edad </option>
									<option value="Crisis Tirotoxica">Crisis Tirotoxica</option>
									<option value="DBT Descompensada">DBT Descompensada</option>
									<option value=" Depresion Pos- anestecia"> Depresion Pos-anestecia</option>
									<option value="Deshidratacion Aguda">Deshidratacion Aguda</option>
									<option value="Disfuncion Hepatica">Disfuncion Hepatica</option>
									<option value=" Disfuncion Renal Aguda"> Disfuncion Renal Aguda</option>
									<option value="Ecampsia">Ecampsia</option>
									<option value="Edema Agudo Pulmonar">Edema Agudo Pulmonar</option>
									<option value="Encefalitis">Encefalitis</option>
									<option value="Encefalopatia Metavol">Encefalopatia Metavol</option>
									<option value="Enf No Clasificada">Enf No Clasificada</option>
									<option value="Estado Asmatico">Estado Asmatico</option>
									<option value=" Estado convulsivo"> Estado convulsivo</option>
									<option value="Hemorragia Pos Aborto">Hemorragia Pos Aborto</option>
									<option value="Hemorragia Digestiva">Hemorragia Digestiva</option>
									<option value="Hemorragia Interna">Hemorragia Interna</option>
									<option value="Higado graso Agudo">Higado graso Agudo</option>
									<option value="ICC">ICC</option>
									
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_DiagFinal">
									<option value"Abdomen agudo">Abdomen agudo</option>
									<option value="ACV Hemorragico">ACV Hemorragico</option>
									<option value="ACV Isquemico">ACV Isquemico</option>
									<option value="Arritmia cardiaca">Arritmia cardiaca</option>
									<option value="Cetoacidosis DBT">Cetoacidosis DBT</option>
									<option value="Choque Anafilactico">Choque Anafilactico</option>
									<option value="Coque Hemoragico">Coque Hemoragico</option>
									<option value="Choque Hipovolemico">Choque Hipovolemico</option>
									<option value="Choque Septico">Choque Septico</option>
									<option value="Coma de Edad"> Coma de Edad </option>
									<option value="Crisis Tirotoxica">Crisis Tirotoxica</option>
									<option value="DBT Descompensada">DBT Descompensada</option>
									<option value=" Depresion Pos- anestecia"> Depresion Pos-anestecia</option>
									<option value="Deshidratacion Aguda">Deshidratacion Aguda</option>
									<option value="Disfuncion Hepatica">Disfuncion Hepatica</option>
									<option value=" Disfuncion Renal Aguda"> Disfuncion Renal Aguda</option>
									<option value="Ecampsia">Ecampsia</option>
									<option value="Edema Agudo Pulmonar">Edema Agudo Pulmonar</option>
									<option value="Encefalitis">Encefalitis</option>
									<option value="Encefalopatia Metavol">Encefalopatia Metavol</option>
									<option value="Enf No Clasificada">Enf No Clasificada</option>
									<option value="Estado Asmatico">Estado Asmatico</option>
									<option value=" Estado convulsivo"> Estado convulsivo</option>
									<option value="Hemorragia Pos Aborto">Hemorragia Pos Aborto</option>
									<option value="Hemorragia Digestiva">Hemorragia Digestiva</option>
									<option value="Hemorragia Interna">Hemorragia Interna</option>
									<option value="Higado graso Agudo">Higado graso Agudo</option>
									<option value="ICC">ICC</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_SistCompro">
									<option value="Respiratorio">Respiratorio</option>
									<option value="Endocrino">Endocrino</option>
									<option value="Cardiovascular">Cardiovascular</option>
									<option value="Digestivo">Digestivo</option>
									<option value="Gine-Obstetrico">Gine-Obstetrico</option>
									<option value="Multisistemico">Multisistemico</option>
									<option value="Neurologico">Neurologico</option>
									<option value="Renal">Renal</option>
															</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_CesariaUCI">
									<option value="No">No</option>
									<option value="No Aplica">No Aplica</option>
									<option value="Si">Si</option>
									<option value="Sin Dato">Sin Dato</option>
									</select>
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_TipoEfer">
									<option value="Disfuncional">Disfuncional</option>
									<option value="Hemorragica">Hemorragica</option>
									<option value="Infecciosa">Infecciosa</option>
									<option value="Neoplasica">Neoplasica</option>
									<option value="Toxica">Toxica</option>
									<option value="Traumatica">Traumatica</option>
									</select>
									
								</p>
								<p>&nbsp;</p>
								<p>
									<select name="txt_GP">
									<option value="Enf. Cardiovascular">Enf. Cardiovascular</option>
									<option value="Enf. Respiratoria">Enf. Respiratoria</option>
									<option value="Enf. Hematologica">Enf. Hematologica</option>
									<option value=" Enf. Neurologica"> Enf. Neurologica</option>
									<option value="Enf. Renal">Enf. Renal</option>
									<option value="Hemorragias Severas">Hemorragias Severas</option>
									<option value="HTA Inducida Gestaci ">HTA Inducida Gestaci </option>
									<option value="Infecciones Severas">Infecciones Severas</option>
									<option value="Otra Enf. Gestacional">Otra Enf. Gestacional</option>
									<option value="Otro Transtorno">Otro Transtorno</option>

									</select>
								</p>
								<p>&nbsp;</p></td>
						</tr>

						<tr>
							<td height="78" colspan="4" align="center"><label> <input
									type="submit" name="Submit" value="Guardar" />
							</label></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<tr align="center">
			<td height="89" colspan="2"><br>Copyright &copy; 2014
					Jonathan Jesus Pinto Valiente<br> Todos los derechos
						reservados.</td>
		</tr>
	</table>



</body>
</html>
