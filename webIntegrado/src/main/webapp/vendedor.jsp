<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/administrador.css">
    <title>Interfaz de Ventas</title>
</head>

<body>
    <div class="sidebar">
        <a href="#" class="logo">
            <i class='bx bx-code-alt'></i>
            <div class="logo-name"><span>Modo</span>Vendedor</div>
        </a>
        <ul class="side-menu">
            <li class="active"><a href="#"><i class='bx bx-store-alt'></i>Realizar Venta</a></li>
            <li><a href="#"><i class='bx bx-analyse'></i>Verificar Productos</a></li>
            <li><a href="#"><i class='bx bx-cog'></i>Reembolsos</a></li>
            <li><a href="#"><i class='bx bx-log-out-circle'></i>Cerrar Sesión</a></li>
        </ul>
    </div>

    <div class="content">
        <nav>
            <i class='bx bx-menu'></i>
            <form action="#">
                <div class="form-input">
                    <input type="search" placeholder="Search...">
                    <button class="search-btn" type="submit"><i class='bx bx-search'></i></button>
                </div>
            </form>
            <a href="#" class="profile">
                <img src="${pageContext.request.contextPath}/images/logo.png">
            </a>
        </nav>

        <main>
            <div class="header">
                <div class="left">
                    <h1>Realizar Venta</h1>
                </div>
            </div>

            <!-- Formulario para agregar productos -->
            <div class="sales-form">
                <form id="productForm">
                    <div class="form-group">
                        <label for="codigo">Código</label>
                        <input type="text" id="codigo" name="codigo" placeholder="Código del producto" required>
                    </div>
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" id="nombre" name="nombre" placeholder="Nombre del producto" required>
                    </div>
                    <div class="form-group">
                        <label for="stock">Stock</label>
                        <input type="number" id="stock" name="stock" placeholder="Stock" required>
                    </div>
                    <div class="form-group">
                        <label for="precio">Precio</label>
                        <input type="number" id="precio" name="precio" placeholder="Precio" required>
                    </div>
                    <div class="form-group">
                        <label for="cantidad">Cantidad</label>
                        <input type="number" id="cantidad" name="cantidad" placeholder="Cantidad" required>
                    </div>
                    <button type="button" id="agregarProducto" class="btn">Agregar</button>
                </form>
            </div>

            <!-- Tabla de productos -->
            <div class="orders">
            <h1>Resumen de la venta</h1>
                <table id="tablaProductos">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Productos agregados aparecerán aquí -->
                    </tbody>
                </table>
            </div>

            <!-- Resumen de la venta -->
            <div class="total-summary">
                <div class="totals">
                    <p>Subtotal: <span id="subtotal">S/ 0.00</span></p>
                    <p>IGV (18%): <span id="igv">S/ 0.00</span></p>
                    <p>Total: <span id="total">S/ 0.00</span></p>
                </div>
            </div>
        </main>
    </div>

    <script src="${pageContext.request.contextPath}/script.js"></script>
</body>

</html>
