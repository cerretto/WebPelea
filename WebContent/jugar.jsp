<%@page import="entities.Personaje" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="col-lg-12" style="margin-top: 10px;">
		<div class="col-lg-4 col-lg-offset-1" style="margin-top: 10px;">
			<input type="submit" value="Buscar PJ 1" id="btnComenzar" class="btn btn-primary btn-lg btn-block"">
		</div>
		<div class="col-lg-4 col-lg-offset-2" style="margin-top: 10px;">
			<input type="submit" value="Buscar PJ 2" id="btnComenzar" class="btn btn-primary btn-lg btn-block"">
		</div>
		</div>
	<div class="col-lg-12">
		<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="Personaje 1" required="" autofocus="" type="">
		</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
	<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="Personaje 2" required="" autofocus="" type="">
		</div>
		</div>
			<div class="col-lg-12">
		<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Vida:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Vida:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
	<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
		</div>
		<div class="col-lg-12">
		<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Energia:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Energia:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
	<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
		</div>
				<div class="col-lg-12">
		<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Evasion:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Evasion:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
	<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
		</div>
		<div class="col-lg-12">
		<div class="col-lg-1 col-lg-offset-1" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Defensa:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
			<div class="col-lg-1 col-lg-offset-2" style="margin-top: 30px;">
			<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Defensa:</label>
		</div>
		<div class="col-lg-3" style="margin-top: 30px;">
	<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
		</div>
		</div>
		<div class="col-lg-12">
			<hr style="border-color: black;">
			<div class="col-lg-1 col-lg-offset-1" style="margin-top: 10px;">
				<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Turno:</label>
			</div>
			<div class="col-lg-3" style="margin-top: 10px;">
				<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
			</div>
				<div class="col-lg-2 col-lg-offset-2" style="margin-top: 5px;">
				<input type="submit" value="Atacar" id="btnComenzar" class="btn btn-danger btn-lg btn-block"">
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
				<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="" required="" autofocus="" type="">
			</div>
					<div class="col-lg-2 col-lg-offset-2" style="margin-top: 35px;">
				<input type="submit" value="Cancelar" id="btnComenzar" class="btn btn-default btn-lg btn-block"">
			</div>
					<div class="col-lg-4" style="margin-top: 35px;">
				<input type="submit" value="Comenzar Partida" id="btnComenzar" class="btn btn-success btn-lg btn-block"">
			</div>
				</div>




</body>
</html>