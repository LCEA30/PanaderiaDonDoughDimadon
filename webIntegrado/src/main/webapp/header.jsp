<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<nav className="navbar navbar-expand-lg navbar-light bg-light">
		<div className="container-fluid">
			 <a href="index.html" className="navbar-brand"
				aria-label="Página de inicio"> <img src={logo}
				alt="Logo de la tienda Fay" width="100" />
			</a> 
			<button className="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span className="navbar-toggler-icon"></span>
			</button>

		
			<div className="collapse navbar-collapse" id="navbarNav">
				<ul className="navbar-nav me-auto mb-2 mb-lg-0">
					<li className="nav-item"><a href="index.html"
						className="nav-link active" aria-current="page">Inicio</a></li>
					<li className="nav-item dropdown"><a href="#"
						className="nav-link dropdown-toggle" id="categoriasDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Categorías </a></li>
					<li className="nav-item"><a href="#" className="nav-link">Novedades</a>
					</li>
					<li className="nav-item"><a href="#" className="nav-link">Ofertas</a>
					</li>
					<li className="nav-item"><a href="#" className="nav-link">Blog</a>
					</li>
				</ul>

				
				<form className="d-flex">
					<input className="form-control me-2" type="search"
						placeholder="Buscar productos..." aria-label="Search" />
					<button className="btn btn-outline-success" type="submit">Buscar</button>
				</form>

				
				<div className="d-flex ms-3">
					<a href="#" className="nav-link" aria-label="Facebook">FB</a> <a
						href="#" className="nav-link" aria-label="Instagram">IG</a> <a
						href="#" className="nav-link" aria-label="Twitter">TW</a>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>