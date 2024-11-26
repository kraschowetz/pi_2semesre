<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Climb - Manutenção de Produtos</title>
<link rel="stylesheet" href="css/indexAdm.css">
<style type="text/css">
    <%@ include file="css/indexAdm.css" %>
</style>
</head>
<body>
	<header class="header">
		<div class="logo">climb</div>
		<nav class="navbar">
			<a href="indexAdm.jsp">Início</a>
		</nav>
	</header>

	<main class="container">
		<h1>Manutenção de produtos</h1>

		<div class="actions">
			<button href="novoProduto.jsp" class="new-product-btn">+ Novo Produto</button>
		</div>

		<div class="product-grid">
			<div class="product-card">
				<img src="camiseta-basica.jpg" alt="Camiseta Básica">
				<h2>Camiseta Básica</h2>
				<p>R$39,99</p>
			</div>
			<div class="product-card">
				<img src="vestido-alta-costura.jpg" alt="Vestido Alta Costura">
				<h2>Vestido Alta Costura</h2>
				<p>R$399,89</p>
			</div>
			<div class="product-card">
				<img src="conjunto-esportivo.jpg" alt="Conjunto Esportivo">
				<h2>Conjunto Esportivo</h2>
				<p>R$59,99</p>
			</div>
			<div class="product-card">
				<img src="moletom-basico.jpg" alt="Moletom Básico">
				<h2>Moletom Básico</h2>
				<p>R$49,99</p>
			</div>
		</div>

		<div class="pagination">
			<a href="#">próxima página →</a>
		</div>
	</main>

	<!-- Rodapé -->
	<!-- Rodapé -->
	<footer class="footer">
		<p>Entre em contato com a gente!</p>
		<div class="social-media">
			<a href="#"><img src="instagram.png" width="30px" height="30px"
				alt="Instagram"></a> <a href="#"><img src="facebook.png"
				width="30px" height="30px" alt="Facebook"></a>
		</div>
	</footer>
</body>
</html>