<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.alkenewwallet.model.TransaccionModel"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <title>Transacciones</title>
</head>
<body>
<%
	List<TransaccionModel> tabla = (List) request.getAttribute("movimientos");					
	%>
   <header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" href="./Menu">Alke Wallet</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="./Menu">Menu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./deposit">Depositos</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="./retiro">Retirar Dinero</a></li>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./envio">Transacciones</a>
                
              <li class="nav-item">
                <a class="nav-link" href="#">Movimientos</a>
                
              </li>
            </ul>
          </div>
        </div>
      </nav>
   </header> 
   <main>
    <h1>Transacciones</h1>
    <br>
					<table class="table table-hover  table-striped" id="TablaSendMoney">
						<thead class="table-light">
							<tr>
								<th scope="col">Usuario Envia</th>
								<th scope="col">Usuario Recibe</th>
								<th scope="col">Saldo</th>
								<th scope="col">Fecha</th>
								
							</tr>
						</thead>
						<tbody>
						<%
							for (int i = 0; i < tabla.size(); i++) {
								out.print("<tr>" + ""
								+"<td>" + tabla.get(i).getUsuariosender().getNombre() + "</td>"		
								+"<td>" + tabla.get(i).getUsuarioreceiver().getNombre() + "</td>"		
								+"<td>" + tabla.get(i).getImporte() + "</td>"	
								+"<td>" + tabla.get(i).getTransacciondate() + "</td>"	
																		
								+"</tr>");
							}
						%>
						</tbody>
					</table>
   </main>
   <footer></footer>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="../js/auth.js"></script>
</body>
</html>