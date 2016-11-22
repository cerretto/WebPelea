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
		<form method="post" action="guardar" class="form-horizontal">	
			<div class="col-lg-12" style="margin-top: 20px;">
				<label class="col-lg-4 control-label">Nombre</label>
				<div class="col-lg-4">
					<input type="text" name="nombre" class="form-control" placeholder="nombre">
				</div>
			</div>
			<div class="col-lg-12" style="margin-top: 20px;">
				<label class="col-lg-4 control-label">Defensa</label>
				<div class="col-lg-4">
					<input type="text" name="defensa" class="form-control" placeholder="defensa">
				</div>
			</div>
			<div>
				<label id="lblEnergia">Energia</label><input type="text" name="energia" />
			</div>
			<div>
				<label id="lblEvasion">Evasion</label><input type="text" name="evasion" />
			</div>
			<div>
				<label id="lblVida">Vida</label><input type="text" name="vida" />
			</div>
			<div>
				<input type="submit" value="Guardar" class="btn btn-success btn-lg btn-block">
			</div>
		</form>
	</div>
</body>
</html>