<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="entities.Personaje"%>
<%
	String error = "";
	if (session.getAttribute("error") instanceof String)
		error = (String)session.getAttribute("error"); 
	
	Personaje p = null;
	if (session.getAttribute("personaje") instanceof Personaje)
		p = (Personaje)session.getAttribute("personaje"); 
	String nombre = "";
	String vida = "";
	String defensa = "";
	String energia = "";
	String evasion = "";
	String ptsRestantes = "";
	String ptsTotales = "";
	if (p != null){
		nombre = p.getNombre();
		vida = String.valueOf(p.getVida());
		energia = String.valueOf(p.getEnergia());
		defensa = String.valueOf(p.getDefensa());
		evasion = String.valueOf(p.getEvasion());
		ptsRestantes = String.valueOf(p.getPtsRestantes());
		ptsTotales = String.valueOf(p.getPtsTotales());
	}
%>
<script type="text/javascript">
//alert("asd");
<!--

//-->
</script>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Turn Based Combat</title>
</head>
<body>
	<form method="post" action="Abm">
		</div>
		<div class="container-fluid" style="margin-top: 20px;">
			<h1>Buscar personaje</h1>
			<div class="col-lg-6">
				<input type="text" name="nombrePer" class="form-control" placeholder="Nombre del Personaje">
			</div>
			<div class="col-lg-6">
				<input type="submit" name="buscar" value="Buscar" class="btn btn-primary">
				<label> <%= error %></label>
			</div>
				<div class="col-lg-12" style="margin-top: 20px;">
					<label id="lblNombre" class="col-lg-1 control-label" style="margin-top: 5px;">Nombre:</label>
					<div class="col-lg-4">
						<input type="text" name="nombre" value="<%= nombre %>" class="form-control" placeholder="Nombre">
					</div>
					<div class="col-lg-4 col-lg-offset-2">
						<input type="submit" name="guardar" value="Guardar" class="btn btn-success btn-lg btn-block">
					</div>
				</div>
				<div class="col-lg-12" style="margin-top: 20px;">
					<label id="lblDefensa" class="col-lg-1 control-label" style="margin-top: 5px;">Defensa:</label>
					<div class="col-lg-4">
						<input type="text" name="defensa" value="<%= defensa %>" class="form-control" placeholder="Defensa">
						<p>(m�x. 20)</p>
					</div>
					<div class="col-lg-4 col-lg-offset-2">
						<input type="submit" name="borrar" value="Borrar" class="btn btn-danger btn-lg btn-block">
					</div>
				</div>
				<div class="col-lg-12" style="margin-top: 20px;">
					<label id="lblEnergia" class="col-lg-1 control-label" style="margin-top: 5px;">Energ�a:</label>
					<div class="col-lg-4">
						<input type="text" name="energia" value="<%= energia %>" class="form-control" placeholder="Energ�a">
					</div>
				</div>
				<div class="col-lg-12" style="margin-top: 20px;">
					<label id="lblEvasion" class="col-lg-1 control-label" style="margin-top: 5px;">Evasi�n:</label>
					<div class="col-lg-4">
						<input type="text" name="evasion"  value="<%= evasion %>" class="form-control" placeholder="Evasi�n">
						<p>(m�x. 80)</p>
					</div>
				</div>
				<div class="col-lg-12" style="margin-top: 20px;">
					<label id="lblVida" class="col-lg-1 control-label" style="margin-top: 5px;">Vida:</label>
					<div class="col-lg-4">
						<input type="text" name="vida" value="<%= vida %>" class="form-control" placeholder="Vida">
					</div>	
				</div>
				<div class="col-lg-12" style="margin-top: 20px;">
					<label id="lblPtosRestantes" class="col-lg-2 control-label" style="margin-top: 5px;">Ptos restantes:</label>
					<div class="col-lg-2">
						<input type="text" name="ptosRestantes" value="<%= ptsRestantes %>" class="form-control">
					</div>	
				</div>
				<div class="row">
					<div class="col-lg-4 col-lg-offset-2" style="margin-top: 20px;">
						<input type="submit" name="resetear" value="Resetear" class="btn btn-warning btn-block">
					</div>
					<div class="col-lg-4 col-lg-offset-1" style="margin-top: 20px;">
						<input type="submit" name="cancelar" value="Cancelar" class="btn btn-info btn-block">
					</div>
				</div>
		</div>
	</form>
</body>
</html>