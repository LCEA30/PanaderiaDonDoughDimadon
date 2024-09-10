<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="resources/css/index.css">
    <title>Inicio de sesión</title>
</head>
<body>
    <div class="container" id="container">
        <div class="form-container sign-up">
            <form action="administrador.jsp" method="post">
                <h1>Modo Administrador</h1>
                <br>
                <span>Ingresa tus credenciales</span>
                <br>
                <input type="email" name="adminEmail" placeholder="Email" >
                <input type="password" name="adminPassword" placeholder="Password" >
                <button type="submit">Ingresar</button>
            </form>
        </div>
        <div class="form-container sign-in">
            <form action="vendedor.jsp" method="post">
                <h1>Modo Vendedor</h1>
                <br>
                <span>Ingresa tus credenciales</span>
                <br>
                <input type="email" name="vendorEmail" placeholder="Email" >
                <input type="password" name="vendorPassword" placeholder="Password" >
                <button type="submit">Ingresar</button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Ingresar como Vendedor</h1>
                    <br>
                    <button class="hidden" id="CambiarModoVenderor">Modo vendedor</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Ingresar como Administrador</h1>
                    <br>
                    <button class="hidden" id="CambiarModoAdministrador">Modo administrador</button>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        // Esperar a que el DOM esté completamente cargado antes de agregar eventos
        document.addEventListener('DOMContentLoaded', () => {
            const container = document.getElementById('container');
            const ModoAdministrador = document.getElementById('CambiarModoAdministrador');
            const ModoVendedor = document.getElementById('CambiarModoVenderor');
    
            ModoAdministrador.addEventListener('click', () => {
                container.classList.add("active");
            });
    
            ModoVendedor.addEventListener('click', () => {
                container.classList.remove("active");
            });
        });
    </script>
    
    <script src="${pageContext.request.contextPath}/Movimiento.js"></script>
</body>
</html>
