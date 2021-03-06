<%@page import="entities.*" %>
<%@page import="logic.PartidaLogic" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String error = "";
	if (session.getAttribute("error") instanceof String)
		error = (String)session.getAttribute("error"); 

	PersonajeEnLucha jugador1 = null;
	PersonajeEnLucha jugador2 = null;
	PartidaLogic ctrl = null;
	String turnoDe = "";
	boolean partidaVigente = false;
	
	String nombre1 = "";
	String id1 = "";
	String vida1 = "";
	String defensa1 = "";
	String energia1 = "";
	String evasion1 = "";
	String nombre2 = "";
	
	String id2 = "";
	String vida2 = "";
	String defensa2 = "";
	String energia2 = "";
	String evasion2 = "";
	
	if (session.getAttribute("partida") instanceof PartidaLogic)
		ctrl = (PartidaLogic)session.getAttribute("partida"); 
	if(ctrl == null){
		nombre1 = ((Personaje)session.getAttribute("p1")).getNombre();
		nombre2 = ((Personaje)session.getAttribute("p2")).getNombre();
	} else {
		jugador1 = ctrl.getJugador1();
		jugador2 = ctrl.getJugador2();
		turnoDe = ctrl.getEnTurno().getP().getNombre();
		partidaVigente = ctrl.isPartidaEnCurso();
	}
	
	String strComenzar = "";
	String strAccion = "";
	
	if(partidaVigente == true){
		strComenzar = " disabled=\"disabled\"";
	} else {
		strAccion = " disabled=\"disabled\"";
	}
	
	
	if (jugador1 != null){
		id1 = String.valueOf(jugador1.getP().getId());
		nombre1 = jugador1.getP().getNombre();
		vida1 = String.valueOf(jugador1.getVidaActual());
		energia1 = String.valueOf(jugador1.getEnergiaActual());
		defensa1 = String.valueOf(jugador1.getP().getDefensa());
		evasion1 = String.valueOf(jugador1.getP().getEvasion());
	}
	if (jugador2 != null){
		id2 = String.valueOf(jugador2.getP().getId());
		nombre2 = jugador2.getP().getNombre();
		vida2 = String.valueOf(jugador2.getVidaActual());
		energia2 = String.valueOf(jugador2.getEnergiaActual());
		defensa2 = String.valueOf(jugador2.getP().getDefensa());
		evasion2 = String.valueOf(jugador2.getP().getEvasion());
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
			<label><%= error %></label>
	</div>
	<form method="post" action="Pelea">
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<input name="id1" id="txtId1" class="form-control" value="<%= id1 %>">
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="nombre1" class="form-control" value="<%= nombre1 %>">
			</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<input name="id2" id="txtId2" class="form-control" value="<%= id2 %>">
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="nombre2"  class="form-control" value="<%= nombre2 %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblVida1" class="col-lg-1 control-label" style="margin-top: 5px;">Vida:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="vida1"  class="form-control" value="<%= vida1 %>">
			</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblVida2" class="col-lg-1 control-label" style="margin-top: 5px;">Vida:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="vida2"  class="form-control" value="<%= vida2 %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblEnergia1" class="col-lg-1 control-label" style="margin-top: 5px;">Energia:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="energia1" class="form-control" value="<%= energia1 %>">
			</div>
			
			
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblEnergia2" class="col-lg-1 control-label" style="margin-top: 5px;">Energia:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="energia2"  class="form-control" value="<%= energia2 %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblEvasion1" class="col-lg-1 control-label" style="margin-top: 5px;">Evasion:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="evasion1" class="form-control" value="<%= evasion1 %>">
			</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblEvasion2" class="col-lg-1 control-label" style="margin-top: 5px;">Evasion:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="evasion2" class="form-control" value="<%= evasion2 %>">
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
				<label id="lblDefensa1" class="col-lg-1 control-label" style="margin-top: 5px;">Defensa:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="defensa1" class="form-control" value="<%= defensa1 %>">
			</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
				<label id="lblDefensa2" class="col-lg-1 control-label" style="margin-top: 5px;">Defensa:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 30px;">
				<input name="defensa2" class="form-control" value="<%= defensa2 %>">
			</div>
		</div>
		<div class="col-lg-12" style="margin-top: 50px;">
			<hr style="border-color: black;">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 10px;">
				<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Turno:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 10px;">
				<input id="txtPersonajeTurno" class="form-control" value="<%= turnoDe%>">
			</div>
			<div class="col-lg-2 col-lg-offset-2" style="margin-top: 5px;">
				<input type="submit" value="Atacar" name="atacar" id="btnAtacar" class="btn btn-danger btn-lg btn-block" <%= strAccion %>>
			</div>
			<div class="col-lg-2" style="margin-top: 5px;">
				<input type="submit" value="Defender" name="defender" id="btnDefender" class="btn btn-warning btn-lg btn-block" <%= strAccion %>>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 10px;">
				<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Energia ataque:</label>
			</div>
			<div class="col-lg-2" style="margin-top: 15px;">
				<input name="energiaAtaque" id="txtEnergiaAtaque" class="form-control">
			</div>
			<div class="col-lg-2 col-lg-offset-2" style="margin-top: 35px;">
				<input type="submit" value="Cancelar" id="btnCancelar" name="cancelar" class="btn btn-default btn-lg btn-block" />
			</div>
			<div class="col-lg-4" style="margin-top: 35px;">
				<input type="submit" value="Comenzar Partida" name="comenzar" id="btnComenzar" class="btn btn-success btn-lg btn-block" <%= strComenzar %> />
			</div>
		</div>
	</form>



</body>
</html>

