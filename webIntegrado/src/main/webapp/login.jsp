<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-4">
				<h3 class="text-center">Login</h3>
				<form action="login" method="post">
					<div class="form-group">
						<label for="username">Username</label> <input type="text"
							class="form-control" id="username" name="username"
							placeholder="Enter username" required>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" name="password"
							placeholder="Enter password" required>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Login</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>