<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login y Register - Juan Beleño</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
    <main>
        <div class="contenedor__todo">
            <div class="caja__trasera">
                <div class="caja__trasera-login">
                    <h3>¿Ya tienes una cuenta?</h3>
                    <p>Inicia sesión para entrar en la página</p>
                    <button id="btn__iniciar-sesion">Iniciar Sesión</button>
                </div>
                <div class="caja__trasera-register">
                    <h3>¿Aún no tienes una cuenta?</h3>
                    <p>Regístrate para que puedas iniciar sesión</p>
                    <button id="btn__registrarse">Regístrarse</button>
                </div>
            </div>

           <!--Formulario de Login y registro-->
              <!--Formulario de Login y registro-->
                <div class="contenedor__login-register">
                    <!--Login-->
                    <form id="loginForm" method="post" action="validarlogin" class="formulario_login">
                        <h2>Iniciar Sesión</h2>
                        <input type="text" id="email" name="email" placeholder="Correo Electronico">
                        <input type="password" id="password" name="password" placeholder="Contraseña">
                        <button type="submit">Enviar</button>
                    </form>

                    <!--Register-->
                    <form action="nuevo" method="post" class="formulario__register">
                        <h2>Regístrarse</h2>
                        <input type="text" id="nombre1" name="nombre1" placeholder="Primer Nombre">
                        <input type="text" id="nombre2" name="nombre2" placeholder="Segundo Nombre">
                        <input type="text" id="apellidopaterno" name="apellidopaterno" placeholder="Primer Apellido">
                        <input type="text" id="apellidomaterno" name="apellidomaterno" placeholder="Segundo Apellido">
                        <input type="text" id="email" name="email" placeholder="Correo Electronico">
                        <input type="text" id="run_cliente" name="run_cliente" placeholder="Run">
                        <input type="password" id="password" name="password" placeholder="Contraseña">
                        <input type="text" id="banco" name="banco" placeholder="Nombre de Banco">
                        <input type="text" id="numcuenta" name="numcuenta" placeholder="Numero de Cuenta">
                        <button type="submit">Regístrarse</button>
                    </form>
                </div>
        </div>
    </main>
    <script src="${pageContext.request.contextPath}/static/js/script.js"></script>
</body>
</html>
