<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Checkout - Climb</title>
<link rel="stylesheet"
	href="css/checkout.css">
	<style type="text/css">
    <%@ include file="css/checkout.css" %>
</style>
</head>
<body>
	<header class="header">
		<div class="logo">climb</div>
		<div class="header-right">
			<a href="#" class="cart-icon">🛒</a> <span>Caixa</span> <a href="#"
				class="user-icon">👤 Cliente</a>
		</div>
	</header>

	<div class="container">
		<!-- Endereço de Entrega -->
		<section class="delivery-address">
			<span class="icon">👤</span>
			<div class="address-details">
				<h3>Endereço de Entrega:</h3>
				<p>Nome do Destinatário, Rua, Número, Complemento, Bairro,
					Cidade, Estado, CEP</p>
			</div>
			<button class="btn-change">Trocar</button>
		</section>

		<!-- Produtos -->
		<section class="products">
			<div class="product-header">
				<span>Produtos Pedidos:</span> <span>Preço Unitário</span> <span>Quantidade</span>
				<span>Preço Total</span>
			</div>
			<div class="product-item">
				<img src="path/to/product-image.jpg" alt="Produto"
					class="product-image"> <span class="product-name">Nome
					do Produto</span> <span class="product-price">R$300,00</span>
				<div class="quantity-controls">
					<button class="quantity-btn">-</button>
					<input type="number" class="quantity-input" value="2" min="1">
					<button class="quantity-btn">+</button>
				</div>
				<span class="product-total">R$600,00</span>
			</div>
		</section>

		<!-- Método de Pagamento -->
		<section class="payment-methods">
			<h3>Método de Pagamento:</h3>
			<div class="payment-options">
				<button class="payment-btn active">PIX</button>
				<button class="payment-btn">Cartão de Débito/Crédito</button>
				<button class="payment-btn">Boleto</button>
			</div>
			<form class="payment-form">
				<input type="text" placeholder="Nome do Titular"> <input
					type="text" placeholder="Mês"> <input type="text"
					placeholder="Ano"> <input type="text"
					placeholder="Número do Cartão"> <input type="text"
					placeholder="Código de Segurança (CVV)">
			</form>
			<button class="btn-submit">Fazer Pedido</button>
		</section>
	</div>

	<footer class="footer">
		<p>Entre em contato com a gente!</p>
		<div class="social-media">
			<a href="#"><img src="instagram.png" width="30px" height="30px" alt="Instagram"></a>
			<a href="#"><img src="facebook.png" width="30px" height="30px" alt="Facebook"></a>
		</div>
	</footer>
</body>
</html>