
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String error = "";
	if (session.getAttribute("error") instanceof String)
		error = (String)session.getAttribute("error"); 
	
%>



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
			<input name="Personaje1" id="inputPersonaje1" class="form-control" placeholder="Personaje 1">
		</div>
		<div class="col-lg-3" style="margin-top: 20px;">
			<div class="row" style="text-align: center;">
				<h3>Personaje 2</h3>	
			</div>
			<input name="Personaje2" id="inputPersonaje2" class="form-control" placeholder="Personaje 2">	    	
		</div>
		<div class="col-lg-6 col-lg-offset-3" style="color: #f00; margin-top: 20px; text-align: center;">
			<%=error%>
		</div>
		<div class="col-lg-12">
			<div class="col-lg-4 col-lg-offset-2" style="margin-top: 50px;">
				<input type="submit" name="volver" value="Volver" id="btnVolver" class="btn btn-primary btn-lg btn-block">
			</div>
			<div class="col-lg-4" style="margin-top: 50px;">
				<input type="submit" name="comenzar" value="Comenzar" id="btnComenzar" class="btn btn-primary btn-lg btn-block">
			</div>
		</div>
	</form>
</div>
</body>
</html>