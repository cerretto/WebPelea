<%@page import="entities.Personaje" %>
<%@page import="logic.PartidaLogic" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Personaje personaje1 = null;
	Personaje personaje2 = null;
	if (session.getAttribute("p1") instanceof Personaje){
		personaje1 = (Personaje)session.getAttribute("p1"); 
	}
	if (session.getAttribute("p1") instanceof Personaje){
		personaje2 = (Personaje)session.getAttribute("p2");
	}
	
	PartidaLogic ctrl = null;
	if (session.getAttribute("ctrl") instanceof PartidaLogic){
		ctrl = (PartidaLogic)session.getAttribute("crtl"); 
	}
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Partida</title>
</head>
<body>
	<div class="col-lg-12" style="margin-top: 5px; text-align: center;">
			<h1>Turn Based Combat</h1>
	</div>
	<form method="post" action="Jugar">
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<input name="id1" id="inputPersonaje1" class="form-control" value="<%= personaje1.getId() %>">
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="nombre1" id="inputPersonaje1" class="form-control" value="<%= personaje1.getNombre() %>">
			</div>
				<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<input name="id2" id="inputPersonaje1" class="form-control" value="<%= personaje2.getId() %>">
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="nombre2" id="inputPersonaje1" class="form-control" value="<%= personaje2.getNombre() %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblVida1" class="col-lg-1 control-label" style="margin-top: 5px;">Vida:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="vida1" id="inputPersonaje1" class="form-control" value="<%= personaje1.getVida() %>">
			</div>
				<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblVida2" class="col-lg-1 control-label" style="margin-top: 5px;">Vida:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="vida2" id="inputPersonaje1" class="form-control" value="<%= personaje2.getVida() %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblEnergia1" class="col-lg-1 control-label" style="margin-top: 5px;">Energia:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="energia1" id="inputPersonaje1" class="form-control" value="<%= personaje1.getEnergia() %>">
			</div>
				<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblEnergia2" class="col-lg-1 control-label" style="margin-top: 5px;">Energia:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="energia2" id="inputPersonaje1" class="form-control" value="<%= personaje2.getEnergia() %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblEvasion1" class="col-lg-1 control-label" style="margin-top: 5px;">Evasion:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="evasion1" id="inputPersonaje1" class="form-control" value="<%= personaje1.getEvasion() %>">
			</div>
				<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblEvasion2" class="col-lg-1 control-label" style="margin-top: 5px;">Evasion:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="evasion2" id="inputPersonaje1" class="form-control" value="<%= personaje2.getEvasion() %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblDefensa1" class="col-lg-1 control-label" style="margin-top: 5px;">Defensa:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="defensa1" id="inputPersonaje1" class="form-control" value="<%= personaje1.getDefensa() %>">
			</div>
				<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblDefensa2" class="col-lg-1 control-label" style="margin-top: 5px;">Defensa:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="defensa2" id="inputPersonaje1" class="form-control" value="<%= personaje2.getDefensa() %>">
			</div>
		</div>
		<div class="col-lg-12" style="margin-top: 50px;">
			<hr style="border-color: black;">
				<div class="col-lg-1 col-lg-offset-1" style="margin-top: 10px;">
					<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Turno:</label>
				</div>
				<div class="col-lg-3" style="margin-top: 10px;">
					<input name="Personaje1" id="inputPersonaje1" class="form-control" value="">
				</div>
					<div class="col-lg-2 col-lg-offset-2" style="margin-top: 5px;">
					<input type="submit" value="Atacar" name="atacar" id="btnComenzar" class="btn btn-danger btn-lg btn-block"">
				</div>
					<div class="col-lg-2" style="margin-top: 5px;">
					<input type="submit" value="Defender" id="btnComenzar" class="btn btn-warning btn-lg btn-block"">
				</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 10px;">
				<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Energia ataque:</label>
			</div>
			<div class="col-lg-2" style="margin-top: 15px;">
				<input name="energiaAtaque" id="inputEnergiaAtaque" class="form-control">
			</div>
			<div class="col-lg-2 col-lg-offset-2" style="margin-top: 35px;">
				<input type="submit" value="Cancelar" id="btnComenzar" name="cancelar" class="btn btn-default btn-lg btn-block"">
			</div>
			<div class="col-lg-4" style="margin-top: 35px;">
				<input type="submit" value="Comenzar Partida" id="btnComenzar" class="btn btn-success btn-lg btn-block"">
			</div>
		</div>
	</form>



</body>
</html>