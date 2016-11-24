
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

<div class="container">	
	<form method="post" action="Elegir">
		<div class="col-lg-12" style="margin-top: 20px; text-align: center;">
			<h1>Elija un personaje</h1>
		</div>
		<div class="col-lg-3 col-lg-offset-3" style="margin-top: 20px;">
			<div class="row" style="text-align: center;">
				<h3>Personaje 1</h3>	
			</div>	
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="Personaje 1" required="" autofocus="" type="">
		</div>
		<div class="col-lg-3" style="margin-top: 20px;">
			<div class="row" style="text-align: center;">
				<h3>Personaje 2</h3>	
			</div>
			<input name="Personaje2" id="inputPersonaje2" class="form-control" placeholder="Personaje 2">	    	
		</div>
		<div class="col-lg-4 col-lg-offset-4" style="margin-top: 50px;">
			<input type="submit" value="Comenzar" id="btnComenzar" class="btn btn-primary btn-lg btn-block"">
		</div>
		
	</form>
</div>
</body>
</html>