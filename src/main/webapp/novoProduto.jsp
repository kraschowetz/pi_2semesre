<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Climb - Cadastro</title>
<link rel="stylesheet" href="css/novoProduto.css">
</head>
<body>
	<!-- Cabeçalho -->
	<header class="navbar">
		<a href="#" class="logo">climb</a>
		<nav class="nav-links">
			<a href="indexAdm.jsp">Início</a>
		</nav>
	</header>

	<div class="container">
		<div class="form-section">
			<h1>Novo Produto</h1>
			<form id="registerForm" method="post" action="CadastroProdutoServlet">
				<div class="form-group">
					<input type="text" id="productName" name="productName"
						placeholder="Camiseta Basic White" required>
				</div>

				<div class="form-group">
					<input type="text" id="birthDate" name="birthDate"
						placeholder="00/00/0000" required>
				</div>

				<div class="form-group">
					<input type="email" id="email" name="email"
						placeholder="exemplo@gmail.com" required>
				</div>

				<div class="form-group">
					<input type="password" id="password" name="password"
						placeholder="suaSenha123" minlength="6" required>
				</div>

				<div class="btn-container">
					<button class="register-button" type="submit">Salvar</button>
				</div>
				
			</form>
		</div>

		<div class="image-section"></div>
	</div>

	<!-- Rodapé -->
	<footer class="footer">
		<p>Entre em contato com a gente!</p>
		<div class="social-media">
			<a href="#"><img src="instagram.png" alt="Instagram"></a>
			<a href="#"><img src="facebook.png" alt="Facebook"></a>
		</div>
	</footer>
</body>
</html>