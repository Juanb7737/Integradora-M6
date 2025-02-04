<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <title>Envio De Dinero</title>
</head>
<body>
   <header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" href="./envio">Alke Wallet</a>
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
               <li class="nav-item"><a class="nav-link" href="./retiro">Retirar
								Dinero</a></li>
              <li class="nav-item">
                <a class="nav-link" href="#">Transacciones</a>
              </li>
             
              <li class="nav-item">
                <a class="nav-link" href="./transferencia">Movimientos</a>
                
              </li>
            </ul>
          </div>
        </div>
      </nav>
   </header> 
   <main>
    <div class="card text-center  m-auto" style="width: 700px;">
        <div class="card-header">

            <h2 class="text-center">Enviar Dinero </h2>

        </div>
        <div class="card-body">

            <form>
                <div class="form-group row">
                    <label for="depositAmount" class="col-sm-2 col-form-label">Contacto:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="searchContact" placeholder="Ingrese contacto">
                    </div>
                    <div class="col-sm-2">
                        <button type="submit" class="btn btn-primary mb-2" style="float: right;">Buscar</button>
                    </div>

                </div>

            </form>

            <hr>
            <!-- Button trigger modal -->
            <button style="float: left;" type="button" class="btn btn-primary" data-bs-toggle="modal"
                data-bs-target="#exampleModal">
                Agregar nuevo contacto
            </button>


            <table class="table table-hover">
                <thead class="table-light">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">N� Cuenta</th>
                        <th scope="col">Alias</th>
                        <th scope="col">Banco</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Bejamin Sepulveda</td>
                        <td>987654321</td>
                        <td>Benja.Sepulv</td>
                        <td>Merc</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jose Castillo</td>
                        <td>123456789</td>
                        <td>Jose.Cast</td>
                        <td>ABC</td>
                    </tr>
                </tbody>
            </table>

        </div><!-- card body-->
    </div><!-- card-->



    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-center" id="exampleModalLabel">Agregar nuevo contacto</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <form>
                    <div class="modal-body">
                        <!--
                        <th scope="col">Nombre</th> <th scope="col">N� Cuenta</th>
                        <th scope="col">Alias</th> <th scope="col">Banco</th>
                        -->

                        <div class="mb-3">
                            <label for="depositAmount" class="col-sm-2 col-form-label">Nombre:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="searchContact" placeholder=""
                                    required="required">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="Cuenta" class="col-sm-2 col-form-label">N�Cuenta:</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" id="Cuenta" placeholder=""
                                    required="required">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="alias" class="col-sm-2 col-form-label">Alias:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="alias" placeholder=""
                                    required="required">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="banco" class="col-sm-2 col-form-label">Banco:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="banco" placeholder=""
                                    required="required">
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Agregar</button>
                    </div>
                </form>

            </div>
        </div>
    </div><!-- Modal -->



   </main>
   <footer></footer>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="assets/js/auth.js"></script>
</body>
</html>