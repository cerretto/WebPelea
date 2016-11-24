<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Turn Based Combat</title>
</head>
<body>
<br>
<br>
<br>
<div class="container">	
		<div class="col-lg-12" style="margin-top: 20px; text-align: center;">
			<h1>Bienvenidos a Turn Based Combat</h1>
		</div>
		<br>
		<br>
			<div class="col-lg-12" style="margin-top: 20px; text-align: center;">
			<h3>Elija una opción</h3>
		</div>
	<form action="Index" method="post">
		<div class="col-lg-12" style="margin-top: 20px;">
		<div class="col-lg-4 col-lg-offset-1" style="margin-top: 30px;">
			<!--<a href="elegir.jsp" class="btn btn-primary btn-lg btn-block">Comenzar Partida</a>-->
			<input type="submit" name="comenzar" value="Comenzar Partida" class="btn btn-primary btn-lg btn-block"/>
		</div>
		<div class="col-lg-4 col-lg-offset-2" style="margin-top: 30px;">
			<!--<a href="agregar.jsp" class="btn btn-primary btn-lg btn-block">ABM Personaje</a>-->
			<input type="submit" name="abm" value="ABM Personaje" class="btn btn-primary btn-lg btn-block"/>
		</div>
		</div>
	</form>
</div>
	
	
</body>
</html>