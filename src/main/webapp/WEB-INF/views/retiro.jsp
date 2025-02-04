<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
<title>Retirar</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="./Menu">Alke Wallet</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="./Menu">Menu</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="./deposit">Depositos</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Retirar
								Dinero</a></li>
						<li class="nav-item"><a class="nav-link" href="./envio">Transacciones</a></li>
								
						<li class="nav-item"><a class="nav-link"
							href="./transferencia">Movientos</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<main>
			<h1>Retiros</h1>
			<form id="formulario" method="post" action="RealizarRetiro">
				<div class="mb-3">
					<label for="nombre" class="form-label">Nombre</label> <input
						type="text" class="form-control" id="nombre"
						placeholder="Ingresa tu nombre" />
				</div>
				<div class="mb-3">
					<label for="cantidad" class="form-label">Cantidad
						a retirar</label> <input type="number" class="form-control"
						id="saldo" name="saldo" placeholder="Ingresa la cantidad" />
					<div id="cantidadHelp" class="form-text">La cantidad no debe
						superar 2 millones de pesos.</div>
				</div>
				<button type="submit" class="btn btn-primary">Retirar</button>
			</form>
		</main>
	</main>
	<footer></footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script src="../js/auth.js"></script>
	<script src="../js/deposit.js"></script>
</body>
</html>
