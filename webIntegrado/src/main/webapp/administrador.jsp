<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="resources/css/administrador.css">
<title>Menu Empleado</title>
</head>

<body>

	<div class="sidebar">
		<a href="#" class="logo"> <i class='bx bx-code-alt'></i>
			<div class="logo-name">
				<span>Modo</span>Admin
			</div>
		</a>
		<ul class="side-menu">
			<li><a href="#"><i class='bx bx-store-alt'></i>Productos</a></li>
			<li><a href="agregarProductos.jsp"><i class='bx bx-plus-circle'></i>Agregar
					Productos</a></li>
			<!-- Nueva opción -->
			<li class="active"><a href="#"><i class='bx bx-analyse'></i>Clientes</a></li>
			<li><a href="#"><i class='bx bx-message-square-dots'></i>Categorias</a></li>
			<li><a href="#"><i class='bx bx-group'></i>Empleados</a></li>
			<li><a href="#"><i class='bx bx-cog'></i>Configuración</a></li>
		</ul>

		<ul class="side-menu">
			<li><a href="#" class="logout"> <i
					class='bx bx-log-out-circle'></i> Cerrar sesion
			</a></li>
		</ul>
	</div>

	<div class="content">
		<nav>
			<i class='bx bx-menu'></i>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button class="search-btn" type="submit">
						<i class='bx bx-search'></i>
					</button>
				</div>
			</form>
			<input type="checkbox" id="theme-toggle" hidden> <label
				for="theme-toggle" class="theme-toggle"></label> <a href="#"
				class="notif"> <i class='bx bx-bell'></i> <span class="count">0</span>
			</a> <a href="#" class="profile"> <img
				src="${pageContext.request.contextPath}/images/logo.png">
			</a>
		</nav>

		<main>
			<div class="header">
				<div class="left">
					<h1>Empleados</h1>
					<ul class="breadcrumb">
						<li><a href="#"> Menu </a></li> /
						<li><a href="#" class="active">Empleados</a></li>
					</ul>
				</div>
				<a href="#" class="report"> <i class='bx bx-cloud-download'></i>
					<span>Descargar Reporte</span>
				</a>
			</div>

			<div class="bottom-data">
				<div class="orders">
					<div class="header">
						<i class='bx bx-receipt'></i>
						<h3>Lista Empleados</h3>
						<i class='bx bx-filter'></i> <i class='bx bx-search'></i>
					</div>
					<table>
						<thead>
							<tr>
								<th>Empleado</th>
								<th>Fecha de ingreso</th>
								<th>Turno</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><p>Jonny Deep</p></td>
								<td>14-08-2021</td>
								<td><span class="status completed">Noche</span></td>
							</tr>
							<tr>
								<td><p>Carolina Mirta</p></td>
								<td>14-08-2023</td>
								<td><span class="status pending">Tarde</span></td>
							</tr>
							<tr>
								<td><p>Clark Kent</p></td>
								<td>14-08-2024</td>
								<td><span class="status process">Mañana</span></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="reminders">
					<div class="header">
						<i class='bx bx-note'></i>
						<h3>Asistencia</h3>
						<i class='bx bx-filter'></i> <i class='bx bx-plus'></i>
					</div>
					<ul class="task-list">
						<li class="completed">
							<div class="task-title">
								<i class='bx bx-check-circle'></i>
								<p>Asistió</p>
							</div> <i class='bx bx-dots-vertical-rounded'></i>
						</li>
						<li class="completed">
							<div class="task-title">
								<i class='bx bx-check-circle'></i>
								<p>Asistió</p>
							</div> <i class='bx bx-dots-vertical-rounded'></i>
						</li>
						<li class="not-completed">
							<div class="task-title">
								<i class='bx bx-x-circle'></i>
								<p>No Asistió</p>
							</div> <i class='bx bx-dots-vertical-rounded'></i>
						</li>
					</ul>
				</div>
			</div>
		</main>

	</div>

	<script src="${pageContext.request.contextPath}/script.js"></script>
</body>

</html>
