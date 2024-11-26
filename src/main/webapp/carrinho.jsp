<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Carrinho de Compras - Climb</title>
<link rel="stylesheet" href="css/carrinho.css">
<style type="text/css">
    <%@ include file="css/carrinho.css" %>
</style>
</head>
<body>
	<header class="header">
		<div class="logo">climb</div>
		<div class="cart-title">Carrinho de Compras</div>
		<div class="user-section">
			<div class="cart-icon">🛒</div>
			<div class="user-icon">👤 Cliente</div>
		</div>
	</header>

	<main class="cart-container">
		<div class="products-header">
			<span>Produtos</span> <span>Preço Unitário</span> <span>Quantidade</span>
			<span>Preço Total</span>
		</div>

		<!-- Produto 1 -->
		<div class="product-item">
			<div class="product-details">
				<input type="radio" name="select-product">
				<div class="product-image">Imagem do produto aqui</div>
				<span>Nome do Produto*</span>
			</div>
			<div class="price">R$100,00</div>
			<div class="quantity-control">
				<button>-</button>
				<input type="text" value="1">
				<button>+</button>
			</div>
			<div class="price">R$100,00</div>
		</div>

		<!-- Produto 2 -->
		<div class="product-item">
			<div class="product-details">
				<input type="radio" name="select-product">
				<div class="product-image">Imagem do produto aqui</div>
				<span>Nome do Produto*</span>
			</div>
			<div class="price">R$200,00</div>
			<div class="quantity-control">
				<button>-</button>
				<input type="text" value="1">
				<button>+</button>
			</div>
			<div class="price">R$200,00</div>
		</div>

		<!-- Produto 3 -->
		<div class="product-item">
			<div class="product-details">
				<input type="radio" name="select-product" checked>
				<div class="product-image">Imagem do produto aqui</div>
				<span>Nome do Produto*</span>
			</div>
			<div class="price">R$300,00</div>
			<div class="quantity-control">
				<button>-</button>
				<input type="text" value="2">
				<button>+</button>
			</div>
			<div class="price">R$600,00</div>
		</div>

		<!-- Resumo do Carrinho -->
		<div class="cart-footer">
			<div class="cart-actions">
				<input type="checkbox" id="select-all"> <label
					for="select-all">Selecionar Tudo (3)</label>
				<button class="delete-btn">Excluir</button>
			</div>
			<div class="cart-total">
				Total (1 item): <span>R$600,00</span>
			</div>
		</div>

		<button class="continue-btn">Continuar</button>
	</main>

	<footer class="footer">
		<p>Entre em contato com a gente!</p>
		<div class="social-media">
			<a href="#"><img src="instagram.png" width="30px" height="30px" alt="Instagram"></a>
			<a href="#"><img src="facebook.png" width="30px" height="30px" alt="Facebook"></a>
		</div>
	</footer>
</body>
</html>