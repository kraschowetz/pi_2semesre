<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Catálogo</title>
<link rel="stylesheet" href="css/catalogo.css">
</head>
<body>
	<!-- Cabeçalho -->
	<header class="navbar">
		<a href="#" class="logo">climb</a>
		<nav class="nav-links">
			<a href="#">Início</a> <a href="catalogo.jsp">Catálogo</a> <a
				href="login.jsp">Login</a>
		</nav>
	</header>

	<main class="main-content">
		<div class="search-bar">
			<input type="text" placeholder="Pesquisar">
			<button class="btn-pesquisar">Pesquisar</button>
		</div>

		<div class="products-grid">
			<div class="product-card">
				<img src="https://thumb.braavo.me/lawe/0/424789716.webp"
					alt="Camiseta Básica" class="product-image">
				<h2>Camiseta Básica</h2>
				<p class="product-price">R$39,99</p>
				<div class="product-actions">
					<button class="btn-add-cart">Adicionar ao carrinho</button>
					<button class="btn-buy">Comprar</button>
				</div>
			</div>

			<div class="product-card">
				<img
					src="https://brooksfielddonna.vtexassets.com/arquivos/ids/201625/NTFNFS001RI_15930_1-CINTO-MADU.jpg?v=638482702863700000"
					alt="Vestido Alta Costura" class="product-image">
				<h2>Vestido Alta Costura</h2>
				<p class="product-price">R$399,89</p>
				<div class="product-actions">
					<button class="btn-add-cart">Adicionar ao carrinho</button>
					<button class="btn-buy">Comprar</button>
				</div>
			</div>

			<div class="product-card">
				<img
					src="https://images.tcdn.com.br/img/img_prod/912844/legging_training_fem_jeep_commander_verde_preta_3041_1_26b20828a722a9e397739e4303f09471.jpg"
					alt="Conjunto Esportivo" class="product-image">
				<h2>Conjunto Esportivo</h2>
				<p class="product-price">R$59,99</p>
				<div class="product-actions">
					<button class="btn-add-cart">Adicionar ao carrinho</button>
					<button class="btn-buy">Comprar</button>
				</div>
			</div>

			<div class="product-card">
				<img
					src="https://m.media-amazon.com/images/I/51nvr5bY8VL._AC_SY500_.jpg"
					alt="Moletom Básico" class="product-image">
				<h2>Moletom Básico</h2>
				<p class="product-price">R$49,99</p>
				<div class="product-actions">
					<button class="btn-add-cart">Adicionar ao carrinho</button>
					<button class="btn-buy">Comprar</button>
				</div>
			</div>
		</div>

		<div class="pagination">
			<a href="#" class="btn-next">próxima página &gt;</a>
		</div>
	</main>

	<footer>
		<p>Entre em contato com a gente!</p>
		<div class="social-media">
			<a href="#"><img src="instagram.png" alt="Instagram"></a>
			<a href="#"><img src="facebook.png" alt="Facebook"></a>
		</div>
	</footer>
</body>
</html>