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
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Fecha</th>
          <th scope="col">Descripci�n</th>
          <th scope="col">Cantidad</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2023-10-01</td>
          <td>Compra en tienda online</td>
          <td>$500.00</td>
        </tr>
        <tr>
          <td>2023-10-05</td>
          <td>Dep�sito de salario</td>
          <td>$1500.00</td>
        </tr>
        <tr>
          <td>2023-10-10</td>
          <td>Pago de factura de servicios</td>
          <td>-$200.00</td>
        </tr>
        <!-- Puedes agregar m�s filas seg�n sea necesario -->
      </tbody>
    </table>
   </main>
   <footer></footer>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="../js/auth.js"></script>
</body>
</html>