<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Turn Based Combat</title>
</head>
<body>
	<div class="container-fluid" style="margin-top: 50px;">
			<div class="col-lg-12" style="margin-top: 20px;">
				<label id="lblNombre" class="col-lg-4 control-label" style="text-align: right; margin-top: 5px;">Nombre:</label>
				<div class="col-lg-4">
					<input type="text" name="nombre" class="form-control" placeholder="Nombre">
				</div>
			</div>
			<div class="col-lg-12" style="margin-top: 20px;">
				<label id="lblDefensa" class="col-lg-4 control-label" style="text-align: right; margin-top: 5px;">Defensa:</label>
				<div class="col-lg-4">
					<input type="text" name="defensa" class="form-control" placeholder="Defensa">
				</div>
			</div>
			<div class="col-lg-12" style="margin-top: 20px;">
				<label id="lblEnergia" class="col-lg-4 control-label" style="text-align: right; margin-top: 5px;">Energía:</label>
				<div class="col-lg-4">
					<input type="text" name="energia" class="form-control" placeholder="Energía">
				</div>
			</div>
			<div class="col-lg-12" style="margin-top: 20px;">
				<label id="lblEvasion" class="col-lg-4 control-label" style="text-align: right; margin-top: 5px;">Evasión:</label>
				<div class="col-lg-4">
					<input type="text" name="evasion" class="form-control" placeholder="Evasión">
				</div>
			</div>
			<div class="col-lg-12" style="margin-top: 20px;">
				<label id="lblVida" class="col-lg-4 control-label" style="text-align: right; margin-top: 5px;">Vida:</label>
				<div class="col-lg-4">
					<input type="text" name="vida" class="form-control" placeholder="Vida">
				</div>	
			</div>
			<div class="col-lg-4 col-lg-offset-4" style="margin-top: 20px;">
				<input type="submit" value="Guardar" class="btn btn-success btn-lg btn-block">
			</div>
	</div>
</body>
</html>