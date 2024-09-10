<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="resources/css/producto.css">
<title>Agregar Producto</title>
</head>

<body>
	<div class="sidebar">
		<a href="#" class="logo"> <i class='bx bx-code-alt'></i>
			<div class="logo-name">
				<span>Modo</span>Admin
			</div>
		</a>
		<ul class="side-menu">
			<li><a href="#"><i class='bx bx-store-alt'></i>Realizar
					Venta</a></li>
			<li><a href="#"><i class='bx bx-analyse'></i>Verificar
					Productos</a></li>
			<li class="active"><a href="#"><i class='bx bx-plus-circle'></i>Agregar
					Productos</a></li>
			<li><a href="#"><i class='bx bx-log-out-circle'></i>Cerrar
					Sesión</a></li>
		</ul>
	</div>

	<div class="content">
		<nav>
			<i class='bx bx-menu'></i>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Buscar...">
					<button class="search-btn" type="submit">
						<i class='bx bx-search'></i>
					</button>
				</div>
			</form>
			<a href="#" class="profile"> <img
				src="${pageContext.request.contextPath}/images/logo.png">
			</a>
		</nav>

		<main>
			<div class="header">
				<div class="left">
					<h1>Agregar Producto</h1>
				</div>
			</div>

			<!-- Formulario para agregar productos -->
			<div class="product-form">
				<form
					action="${pageContext.request.contextPath}/AgregarProductoServlet"
					method="POST" enctype="multipart/form-data">
					<div class="form-container">
						<div class="form-left">
							<div class="form-group">
								<label for="codigo">Código</label> <input type="text"
									id="codigo" name="codigo" placeholder="Código del producto"
									required>
							</div>
							<div class="form-group">
								<label for="nombre">Nombre</label> <input type="text"
									id="nombre" name="nombre" placeholder="Nombre del producto"
									required>
							</div>
							<div class="form-group">
								<label for="descripcion">Descripción</label>
								<textarea id="descripcion" name="descripcion"
									placeholder="Descripción del producto" rows="3" required></textarea>
							</div>
							<div class="form-group">
								<label for="categoria">Categoría</label> <input type="text"
									id="categoria" name="categoria"
									placeholder="Categoría del producto" required>
							</div>
							<div class="form-group">
								<label for="precio">Precio</label> <input type="number"
									id="precio" name="precio" placeholder="Precio del producto"
									step="0.01" required>
							</div>
							<div class="form-group">
								<label for="stock">Stock</label> <input type="number" id="stock"
									name="stock" placeholder="Cantidad en stock" required>
							</div>
							<button type="submit" class="btn">Agregar Producto</button>
						</div>

						<!-- Espacio para agregar la imagen -->
						<div class="form-right">
							<div class="form-group">
								<label for="imagen">Imagen del Producto</label> <input
									type="file" id="imagen" name="imagen" accept="image/*" required>
							</div>
							<div class="preview">
								<img id="preview-img" src="#" alt="Vista previa de la imagen"
									style="display: none; width: 100%; max-width: 200px; height: auto;">
							</div>
						</div>
					</div>
				</form>
			</div>
		</main>
	</div>

	<script>
		// Script para mostrar la vista previa de la imagen cargada
		const input = document.getElementById('imagen');
		const preview = document.getElementById('preview-img');

		input.addEventListener('change', function() {
			const file = this.files[0];
			if (file) {
				const reader = new FileReader();
				preview.style.display = 'block';
				reader.addEventListener('load', function() {
					preview.setAttribute('src', this.result);
				});
				reader.readAsDataURL(file);
			}
		});
	</script>
</body>

</html>
